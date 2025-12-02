<?php

use App\Http\Controllers\ProductsController;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use Laravel\Fortify\Features;
use App\Models\ProductMasterList;


Route::get('/', function () {
    return Inertia::render('Welcome', [
        'canRegister' => Features::enabled(Features::registration()),
    ]);
})->name('home');

Route::get('dashboard', [ProductsController::class, 'index'])->middleware(['auth', 'verified'])->name('dashboard');


// Route::get('dashboard', function () {
//     return Inertia::render('Dashboard', ["product_master_list" => ProductMasterList::all()]);
// })->middleware(['auth', 'verified'])->name('dashboard');




// Route::get('dashboard', function () {
//     return Inertia::render('Dashboard', [

//     ]);
// })->middleware(['auth', 'verified'])->name('dashboard');


Route::post('upload_excel_products', [ProductsController::class, 'uploadExcel'])->name('upload_excel_products');


require __DIR__.'/settings.php';
