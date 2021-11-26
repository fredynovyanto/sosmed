<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class FollowingController extends Controller
{
    public function index(User $user, $following)
    {
        if ($following !== "follower" && $following !== "following"){
            return redirect(route('profile', $user->username));
        }
        
        return view('users.following', [
            'user' => $user,
            'follows' => $following == "following" ? $user->follows : $user->followers 
        ]);
    }

    public function store (Request $request, User $user)
    {
        $active = Auth::user();
        $active->hasFollow($user) ? $active->unfollow($user) : $active->follow($user);
        
        return back();
    }

    // public function following (User $user)
    // {
    //     return view('users.following', [
    //         'following' => $user->follows,
    //         'user' => $user
    //     ]);
    // }

    // public function follower (User $user)
    // {
    //     return view('users.following', [
    //         'following' => $user->followers,
    //         'user' => $user
    //     ]);
    // }
}
