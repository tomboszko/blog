<?php

namespace App\Http\Controllers\Front;
use App\Http\Controllers\Controller;

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

    public function comments()
    {

    }
}