<?php

use App\Http\Controllers\Auth\AuthenticationController;
use App\Http\Controllers\Feed\FeedController;
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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::get('/feeds',[FeedController::class, 'index'])->middleware('auth:sanctum');

Route::post('/feed/store',[FeedController::class, 'store'])->middleware('auth:sanctum');
Route::post('/feed/like/{feed_id}',[FeedController::class, 'likePost'])->middleware('auth:sanctum');
Route::post('/feed/comment/{feed_id}',[FeedController::class, 'comment'])->middleware('auth:sanctum');
Route::get('/feed/comments/{feed_id}',[FeedController::class, 'getComments'])->middleware('auth:sanctum');

Route::get('/test', function(){
    return response([
        'message' => 'API is working'
    ],200);
});

Route::post('/register',[AuthenticationController::class, 'register']);
Route::post('/login',[AuthenticationController::class, 'login']);