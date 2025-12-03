<?php

namespace App\Jobs;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Queue\Queueable;
use Maatwebsite\Excel\Facades\Excel;
use App\Models\ProductMasterList;
use App\Models\ImportJobNotification;
use Illuminate\Support\Facades\Log;

class ProcessExcelQueue implements ShouldQueue
{
    use Queueable;

    /**
     * Create a new job instance.
     */
    public function __construct(public string $path, public int $job_notification_id)
    {
        //
    }

    /**
     * Execute the job.
     */
    public function handle(): void
    {
        // Excel::toArray returns array of sheets; each sheet is array of rows
        $sheets = Excel::toArray([], $this->path);
        
        
        foreach ($sheets[0] as $key => $excel_row) {
            
            // 0 => "Product ID"
            // 1 => "Types"
            // 2 => "Brand"
            // 3 => "Model"
            // 4 => "Capacity"
            // 5 => "Status"

            $excel_product_id = $excel_row[0];
            $excel_types = $excel_row[1];
            $excel_brand = $excel_row[2];
            $excel_model = $excel_row[3];
            $excel_capacity = $excel_row[4];
            $excel_status = strtolower($excel_row[5]);
            
           

            if($key > 0){ // skip the header
                
                if(ProductMasterList::where('product_id', $excel_product_id)->exists()){
                    if($excel_status === 'sold'){
                        $quantity_adjustment = -1;

                        ProductMasterList::where('product_id', $excel_product_id)
                                    ->increment('quantity', $quantity_adjustment);
                        Log::info("\n an '$excel_model' (ProducID $excel_product_id) is sold, updating quantity to -1\n");
                    }
                    if($excel_status === 'buy'){
                        $quantity_adjustment = +1;

                        ProductMasterList::where('product_id', $excel_product_id)
                                    ->decrement('quantity', $quantity_adjustment);
                        Log::info("\n an '$excel_model' (ProducID $excel_product_id) is on sale, updating quantity to +1\n");
                    }
                } else {
                    ProductMasterList::create([
                            'product_id' => $excel_product_id,
                            'types'      => $excel_types,
                            'brand'      => $excel_brand,
                            'model'      => $excel_model,
                            'capacity'   => $excel_capacity,
                            'quantity'   => $excel_status === 'sold' ? 0 : 1,
                    ]);

                    Log::info("\nProducID $excel_product_id does not exist in DB, creating it\n");
                }             
            }
        }

        $job_notication = ImportJobNotification::find($this->job_notification_id);
        
        $job_notication->message_type = 'success';
        $job_notication->message = "Background Job has Completed Successfully at ID ($this->job_notification_id)!";
        $job_notication->status = 'complete';
        $job_notication->save();

        unlink($this->path);
        
    }
}
