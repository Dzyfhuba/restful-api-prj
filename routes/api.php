<?php

use App\Http\Controllers\ClassroomController;
use App\Http\Controllers\PresenceController;
use App\Http\Controllers\StudentController;
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

Route::resource('presence', PresenceController::class, ['except' => ['create']]);
Route::resource('student', StudentController::class, ['except' => ['create']]);
Route::resource('classroom', ClassroomController::class, ['except' => ['create']]);
