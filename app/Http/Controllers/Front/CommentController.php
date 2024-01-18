<?php

namespace App\Http\Controllers\Front;
use App\Http\Controllers\Controller;
use App\models\Post;

class CommentController extends Controller
{
    public function __construct()
    {
        if(!app()->runningInConsole() && !request()->ajax()) {
            abort(403);
        }
    }

    public function store()
    {        
        
    }

    public function destroy()
    {

    }

    public function comments(Post $post)
{
    $comments = $post->validComments()
                      ->withDepth()
                      ->latest()
                      ->get()
                      ->toTree();
    return [
        'html' => view('front/comments', compact('comments'))->render(),
    ];
}
}