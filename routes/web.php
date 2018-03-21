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

Route::resource('/activite/admin', 'Activité_adminController');

Route::get('/activite/vote/{activiteId}', 'VoteController@store')->name('vote');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['prefix' => 'Users'], function (){
    Route::resource('users', 'UserController');
});
Route::get('/accueil', function () {
    return view('accueil');
    });

Route::get('/activites', function () {
    return view('activites');
    });
