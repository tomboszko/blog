<?php

namespace App\Http\Requests\Back;

use Illuminate\Foundation\Http\FormRequest;
use App\Rules\Slug;

class PostRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        $regex = '/^[A-Za-z0-9-éèàù]{1,50}?(,[A-Za-z0-9-éèàù]{1,50})*$/';
        $id = $this->post ? ',' . $this->post->id : '';

        return $rules = [
            'title' => 'required|max:255',
            'body' => 'required|max:65000',
            'slug' => ['required', 'max:255', new Slug, 'unique:posts,slug' . $id],
            'excerpt' => 'required|max:500',
            'meta_description' => 'required|max:160',
            'meta_keywords' => 'required|regex:' . $regex,
            'seo_title' => 'required|max:60',
            'image' => 'required|max:255',
            'categories' => 'required',
            'tags' => 'nullable|regex:' . $regex,
        ];
    }
}