<?php

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

Route::get('/', 'HomeController@index');

Route::get('/product/{slug}', 'HomeController@show');

Route::get('/cart', function () {
    return view('cart');
});


Route::get('/admin', function () {
    return view('welcome');
});

Route::resource('admin/categories', 'CategoryController');
Route::resource('admin/products', 'ProductController');

Route::patch('admin/products/images/{id}', 'ProductController@insert_image');
Route::delete('admin/products/images/{id}', 'ProductController@delete_image');
