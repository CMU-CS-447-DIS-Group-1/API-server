<?php

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
Route::get('login', function () {
    return json_encode(['code' => 0]);
})->name('login');
Route::post('login', [App\Http\Controllers\API\AuthController::class, 'login']);

Route::group(['middleware' => 'auth:api'], function () {
    Route::get('logout', [App\Http\Controllers\API\AuthController::class, 'logout']);
    Route::apiResource('dishes', App\Http\Controllers\API\DishController::class);
});
