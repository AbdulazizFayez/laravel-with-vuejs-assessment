<?php

namespace App\Http\Controllers;

use App\Models\ProductMasterList;
use App\Models\ImportJobNotification;
use Illuminate\Http\Request;
use Inertia\Inertia;
use App\Jobs\ProcessExcelQueue;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class ProductsController extends Controller
{
    public function index(Request $request){
        
        $get_products = ProductMasterList::query()->select('product_id', 'brand','model','types', 'capacity', 'quantity');
        $get_job_notification = ImportJobNotification::where('user_id', Auth::id())
                       ->where('status', 'complete')                            
                       ->whereNull('read_at')
                       ->latest()
                       ->first();


        // Server-side search
        if ($search = $request->input('search')) {
            $get_products->where(function ($q) use ($search) {
                $q->where('product_id', 'like', "%{$search}%")
                  ->orWhere('brand', 'like', "%{$search}%")
                  ->orWhere('model', 'like', "%{$search}%")
                  ->orWhere('types', 'like', "%{$search}%") 
                  ->orWhere('capacity', 'like', "%{$search}%");
            });
        }


        // Server-side sorting
        $sortBy = $request->input('sort_by');
        if ($sortBy) {  // Only sort if sort_by is provided (not null)
            $sortDirection = $request->input('sort_direction', 'asc') === 'desc' ? 'desc' : 'asc';
            $get_products->orderBy($sortBy, $sortDirection);
        } else {
            $get_products->orderBy('id', 'desc');  // Default sort
        }
        
        // Pagination
        $perPage = $request->input('rows_per_page', 5);
        $products = $get_products->paginate($perPage)->withQueryString();
        return Inertia::render('Dashboard', [
            'products' => [
                'data' => $products->items(),
                'total' => $products->total(),
                'per_page' => $products->perPage(),
                'current_page' => $products->currentPage(),
                'last_page' => $products->lastPage(),
                'from' => $products->firstItem(),
                'to' => $products->lastItem(),
            ],
            'filters' => [
                'search' => $request->input('search', ''),
                'sort_by' => $request->input('sort_by'),
                'sort_direction' => $request->input('sort_direction'),
                'rows_per_page' => $perPage,
            ],
            'jobMessages' => $get_job_notification
        ]);

    }

    public function uploadExcel(Request $request)
    {
        $request->validate([
            'excel_file' => 'required|mimes:xlsx,xls',
        ]);

        $file = $request->file('excel_file');
        // $store_excel_file = $file->store('excel_uploads');

        $filename = $file->getClientOriginalName();
        $path = $file->storeAs('excel_uploads', time() . '_' . $filename);

        if (!$file->isValid()) {
            return back()->withErrors(['excel_file' => 'Invalid file uploaded']);
            Log::warning("\n Invalid file uploaded\n");
        }  

        //check on the excel if is a valid or not:
        // Excel::toArray returns array of sheets, each sheet is array of rows
        $sheets = Excel::toArray([], storage_path('app/private/' . $path));
        
        if (empty($sheets) || empty($sheets[0])) {
            return redirect()->route('dashboard')->with('error', 'The spreadsheet is empty or unreadable');
            Log::warning("\n The spreadsheet is empty or unreadable\n");

        }

        $excel_header = $sheets[0][0];
        $excel_header_str_loweer = array_map('strtolower', $excel_header);
        $expected_columns = ['product id', 'types', 'brand', 'model', 'capacity', 'status'];

        $check_if_all_exist = array_diff($expected_columns, $excel_header_str_loweer);

        if(!empty($check_if_all_exist)){
            return redirect()->route('dashboard')->with('error', 'The Excel header values do not match. Please confirm that excel contains same headers as the table');            
            Log::warning("\n The Excel header values do not match. Please confirm that excel contains same headers as the table\n");

        }

        $job_notification_id = ImportJobNotification::create([
            'user_id' => Auth::id(),
            'excel_file' => storage_path('app/private/' . $path),
            'message_type' => 'info',
            'message' => "Job notification created successfully!",
            'status' => "pending",
        ]);

        ProcessExcelQueue::dispatch(storage_path('app/private/' . $path), $job_notification_id->id);
     
        //Inertia way to return value to vuejs
        return redirect()->route('dashboard')->with('success', 'Excel file uploaded successfully! Processing in background...');
    }

    public function updateJobNotification(Request $request)
    {
        ImportJobNotification::where('id', $request->id)
                       ->update(['read_at' => now()]);
        return;
    }
}
