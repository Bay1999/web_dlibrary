<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('kategori', 'apiController@kategori');
Route::get('buku', 'apiController@buku');
Route::get('listbuku/{id}', 'apiController@listbuku');
Route::get('search/{search}', 'apiController@search');
Route::get('detailbuku/{idBuku}', 'apiController@getDetailBuku');
Route::get('listbookmark/{idBuku}', 'apiController@getListBookmark');
Route::post('addreview', 'apiController@addReview');
Route::post('review', 'apiController@review');
// Route::get('review', 'apiController@review');
Route::get('allreview/{idBuku}', 'apiController@allReview');
// Route::get('addreview', 'apiController@addReview');
Route::post('addreader', 'apiController@addReader');
Route::get('getreader/{buku_id}', 'apiController@getReader');

Route::get('data-banjir', 'apiController@dataBanjir');
Route::get('data-kekeringan', 'apiController@dataKekeringan');
Route::post('data-kecamatan', 'apiController@dataKecamatan');
Route::post('buat-pengaduan', 'apiController@buatPengaduan');
Route::get('get-pengaduan', 'apiController@getPengaduan');
Route::post('pencegahan', 'apiController@pencegahan');
Route::get('kuis', 'apiController@kuis');


