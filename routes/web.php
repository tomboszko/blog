<?php

use Illuminate\Support\Facades\Route;
use UniSharp\LaravelFilemanager\Lfm;
use App\Http\Controllers\Front\{
    PostController as FrontPostController,
    CommentController as FrontCommentController
};

Route::group(['prefix' => 'laravel-filemanager', 'middleware' => 'auth'], function () {
    Lfm::routes();
});

// Home
Route::name('home')->get('/', [FrontPostController::class, 'index']);
Route::name('category')->get('category/{category:slug}', [FrontPostController::class, 'category']);
Route::name('author')->get('author/{user}', [FrontPostController::class, 'user']);
Route::name('tag')->get('tag/{tag:slug}', [FrontPostController::class, 'tag']);

Route::prefix('posts')->group(function () {

    Route::name('posts.display')->get('{slug}', [FrontPostController::class, 'show']);
    Route::name('posts.search')->get('', [FrontPostController::class, 'search']);
    Route::name('posts.comments')->get('{post}/comments', [FrontCommentController::class, 'comments']);
    Route::name('posts.comments.store')->post('{post}/comments', [FrontCommentController::class, 'store'])->middleware('auth');
});
// Delete comment
Route::name('front.comments.destroy')->delete('comments/{comment}', [FrontCommentController::class, 'destroy']);

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';