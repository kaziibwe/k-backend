<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group([

    'middleware' => 'api',
    'prefix' => 'v1'

], function ($router) {
    Route::post('adminlogin', [AdminController::class,'adminlogin'])->name('adminlogin');
    Route::post('Adminregister', [AdminController::class,'Adminregister'])->name('Adminregister');
    Route::post('logoutAdmin', [AdminController::class,'logoutAdmin'])->name('logoutAdmin');
    Route::get('profileAdmin', [AdminController::class,'profileAdmin'])->name('profileAdmin');




});
