<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SocioController;

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


Route::get('/socio', [SocioController::class, 'index']);
Route::get('/socio/{id}', [SocioController::class, 'search']);
Route::post('/socio', [SocioController::class, 'store']);
Route::put('/socio/{id}', [SocioController::class, 'edit']);
Route::delete('/socio/{id}', [SocioController::class, 'delete']);