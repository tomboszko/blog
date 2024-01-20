<?php

namespace App\Http\ViewComposers;

use Illuminate\View\View;
use App\Models\{ Category, Page };

class HomeComposer
{
    /**
     * Bind data to the view.
     *
     * @param  View  $view
     * @return void
     */
    public function compose(View $view)
    {
        $view->with([
            'categories' => Category::has('posts')->get(),
            'pages'      => Page::select('slug', 'title')->get(),
        ]);
    }
}
