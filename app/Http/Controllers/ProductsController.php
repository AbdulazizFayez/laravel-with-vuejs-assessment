<?php

namespace App\Http\Controllers;

use App\Models\ProductMasterList;
use Illuminate\Http\Request;
use Inertia\Inertia;
use App\Jobs\ProcessExcelUpload;

class ProductsController extends Controller
{
    public function index(Request $request){
        $get_products = ProductMasterList::query();

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

        // // Server-side sorting
        // if ($sortBy = $request->input('sort_by')) {
        //     $sortDirection = $request->input('sort_direction', 'asc') === 'desc' ? 'desc' : 'asc';
        //     $get_products->orderBy($sortBy, $sortDirection);
        // } else {
        //     $get_products->orderBy('id', 'desc');
        // }

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
            ]
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
        }  

        //check if Excel headers are according to the epected


        // dd($path);
        ProcessExcelUpload::dispatch(storage_path('app/' . $path));
        // $batch = ProcessExcelUpload::dispatch($path); // Dispatch the job
        
        // return redirect()->back()->with('message', 'File uploaded! Processing in background...');
        return back()->with('flash', [
            'message' => 'Excel upload started! Processing in background...'
        ]);
        // return response()->json(['message' => 'File uploaded successfully. Processing in background.']);

        // return back()->with('success', 'Excel file uploaded! Processing started in background. You’ll see updates soon.');
    }
}
