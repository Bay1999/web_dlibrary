<?php

use Illuminate\Support\Facades\Route;
// use App\Http\Controllers\bookController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::middleware(['auth:sanctum', 'verified'])->get('/', function () {
//     return view('dashboard');
//     // redirect('/dashboard');
// })->name('dashboard');

// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
//     return view('dashboard');
// })->name('dashboard');

Route::middleware(['auth:sanctum', 'verified'])->resource('/', dashboardController::class);
Route::middleware(['auth:sanctum', 'verified'])->resource('/dashboard', dashboardController::class);
Route::middleware(['auth:sanctum', 'verified'])->resource('buku', bookController::class);
Route::middleware(['auth:sanctum', 'verified'])->resource('kategori', kategoriController::class);
Route::middleware(['auth:sanctum', 'verified'])->post('/buku/search', 'SearchController@index');

// Route::middleware(['auth:sanctum', 'verified'])->get('/buku', [bookController::class, 'index'])->name('buku');
// Route::middleware(['auth:sanctum', 'verified'])->get('/buku/create', [bookController::class, 'create'])->name('buku.create');
// Route::middleware(['auth:sanctum', 'verified'])->post('/buku/store', [bookController::class, 'store'])->name('buku.store');
