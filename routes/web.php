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
Route::post('update_job_notification', [ProductsController::class, 'updateJobNotification'])->name('update_job_notification');


Route::post('upload_excel_products', [ProductsController::class, 'uploadExcel'])->name('upload_excel_products');


require __DIR__.'/settings.php';
