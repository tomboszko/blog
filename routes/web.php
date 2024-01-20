<?php

use Illuminate\Support\Facades\Route;
use UniSharp\LaravelFilemanager\Lfm;
use App\Http\Controllers\Back\AdminController;
use App\Http\Controllers\Front\{
    PostController as FrontPostController,
    CommentController as FrontCommentController,
    ContactController as FrontContactController,
    PageController as FrontPageController,
};

Route::group(['prefix' => 'laravel-filemanager', 'middleware' => 'auth'], function () {
    Lfm::routes();
});

// Home
Route::name('home')->get('/', [FrontPostController::class, 'index']);
Route::name('category')->get('category/{category:slug}', [FrontPostController::class, 'category']);
Route::name('author')->get('author/{user}', [FrontPostController::class, 'user']);
Route::name('tag')->get('tag/{tag:slug}', [FrontPostController::class, 'tag']);

// Posts
Route::prefix('posts')->group(function () {

    Route::name('posts.display')->get('{slug}', [FrontPostController::class, 'show']);
    Route::name('posts.search')->get('', [FrontPostController::class, 'search']);
    Route::name('posts.comments')->get('{post}/comments', [FrontCommentController::class, 'comments']);
    Route::name('posts.comments.store')->post('{post}/comments', [FrontCommentController::class, 'store'])->middleware('auth');
});

// Delete comment
Route::name('front.comments.destroy')->delete('comments/{comment}', [FrontCommentController::class, 'destroy']);

// Admin
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

Route::prefix('admin')->group(function () {
    Route::middleware('redac')->group(function () {
        Route::name('admin')->get('/', [AdminController::class, 'index']);
        Route::name('purge')->put('purge/{model}', [AdminController::class, 'purge']);
    });
});

//provisoire
//Route::view('admin', 'back.layout');



// Contact
Route::resource('contacts', FrontContactController::class, ['only' => ['create', 'store']]);

// Pages
Route::name('page')->get('page/{page:slug}', FrontPageController::class);

// Test custom error
Route::get('/test-error', function () {
    abort(404);
});




require __DIR__.'/auth.php';