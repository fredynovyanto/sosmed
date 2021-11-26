<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UpdateProfileInformationController extends Controller
{
    public function edit ()
    {
        return view('users.edit');
    }

    public function update (Request $request)
    {
        $attr = $request->validate([
            'name' => ['string', 'min:3', 'max:100', 'required'],
            'email' => ['email', 'string', 'min:3', 'max:100', 'required'],
            'username' => ['required', 'alpha_num', 'unique:users,username,' . Auth::id()]
        ]);

        Auth::user()->update($attr);

        return redirect()->route('profile', Auth::user()->username)->with('message', 'Your profile has been updated');
    }
}
