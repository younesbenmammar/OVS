<?php

use App\Http\Controllers\UserController;

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
    return view('welcome');
});

Route::resource('utilisateur', 'UserController');

Route::resource('/activité/admin', 'Activité_adminController');

Route::get('/activité/vote/{activiteId}', 'VoteController@store')->name('vote');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['prefix' => 'Users'], function (){
    Route::resource('users', 'UserController');
});