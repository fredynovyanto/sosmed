<?php

use App\Http\Controllers\ExploreUserController;
use App\Http\Controllers\FollowingController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\UpdatePasswordController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TimelineController;
use App\Http\Controllers\StatusController;
use App\Http\Controllers\UpdateProfileInformationController;

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

Route::view('/', 'welcome');
Route::middleware('auth')->group(function () {
    Route::get('timeline', TimelineController::class)->name('timeline');
    Route::post('status', [StatusController::class, 'store'])->name('statuses.store');
    Route::get('explore', ExploreUserController::class)->name('explore');

Route::prefix('profile')->group(function () {
    Route::get('edit', [UpdateProfileInformationController::class, 'edit'])->name('profile.edit');
    Route::put('update', [UpdateProfileInformationController::class, 'update'])->name('profile.update');
    
    Route::get('password/edit', [UpdatePasswordController::class, 'edit'])->name('password.edit');
    Route::put('password/edit', [UpdatePasswordController::class, 'update']);

    Route::get('{user}/{following}', [FollowingController::class, 'index'])->name('following.index');
    Route::post('{user}', [FollowingController::class, 'store'])->name('following.store');
    Route::get('{user}', ProfileController::class)->name('profile')->withoutMiddleware('auth');
});
    // Route::get('profile/{user}/following', [FollowingController::class, 'following'])->name('profile.following');
    // Route::get('profile/{user}/follower', [FollowingController::class, 'follower'])->name('profile.follower');
    
    Route::view('/dashboard', 'dashboard')->name('dashboard');
});

require __DIR__.'/auth.php';
