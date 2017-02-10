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

Route::get('/', function () {
    return view('home');
});

Auth::routes();

Route::get('/home', 'HomeController@index');

Route::get('/message', 'MessageController@index');
Route::get('/message/{id}', 'MessageController@getOne');
Route::get('/contact/formulaire','MessageController@formulaire');
Route::post('/contact/insertOne', 'MessageController@insertOne');
Route::get('/message/{id}/delete', 'MessageController@deleteOne');

Route::get('/products', 'ProductController@index');
Route::get('/products/{id}', 'ProductController@getOne');
Route::get('/products/formulaire','ProductController@formulaire');
Route::post('/products/insertOne', 'ProductController@insertOne');
Route::get('/products/{id}/delete', 'ProductController@deleteOne');



Route::get('/logout', 'Auth\LoginController@logout');
