<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/', function () {
    return [
        'message' => 'Invalid Request'
    ];
});

Route::get('/location/search', 'Api\\Location@search');
Route::get('/weather/forecast', 'Api\\Weather@forecast');
Route::get('/weather/current', 'Api\\Weather@current');
