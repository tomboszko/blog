<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Http\Requests\Front\ContactRequest;
use App\Models\Contact;

class ContactController extends Controller
{
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('front.contact');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\Front\ContactRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ContactRequest $request)
    {
        if($request->user()) {
            $request->merge([
                'user_id' => $request->user()->id,
                'name'    => $request->user()->name,
                'email'   => $request->user()->email,
            ]);
        }

        Contact::create ($request->all());

        return back()->with ('status', __('Your message has been recorded, we will respond as soon as possible.'));
    }
}
