<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use App\Http\Requests\StatusRequest;

class StatusController extends Controller
{
    public function store(StatusRequest $request)
    {
        Auth::user()->statuses()->create([
            'body' => $request->body,
            'identifier' => Str::slug(Auth::user()->id . Str::random(31))
        ]);
        return redirect()->back();
    }
}
