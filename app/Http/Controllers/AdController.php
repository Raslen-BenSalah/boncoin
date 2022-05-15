<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AdStore;
use App\Ad;
use  Illuminate\Support\Facades\Auth;
use App\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\DB;


class AdController extends Controller
{
    use RegistersUsers;

    public function index()
    {
        $ads = DB::table('ads')->orderBy('created_at', 'DESC')->paginate(5);

        return view('ads', compact('ads'));
    }

    public function create()
    {
        return view('create');
    }

    public function store(AdStore $request)
    {
        $validated = $request->validated();

        if(!Auth::check()) {
            $request->validate([
                'name' => 'required|unique:users',
                'email' => 'required|email|unique:users',
                'password' => 'required|confirmed',
                'password_confirmation' => 'required',
            ]);

            $user = User::create([
                'name' => $request['name'],
                'email' => $request['email'],
                'password' => Hash::make($request['password']),
            ]);

            $this->guard()->login($user);
        }
        
        $ad = new Ad();
        $ad->title = $validated['title'];
        $ad->description = $validated['description'];
        $ad->price = $validated['price'];
        $ad->localisation = $validated['localisation'];
        $ad->user_id = auth()->user()->id;
        $ad->save();

        return redirect()->route('welcome')->with('success', 'Votre annonce a été déposée.');
    }

    public function search(Request $request)
    {
        $words = $request->words;

        $ads = DB::table('ads')
        ->where('title', 'LIKE', "%$words%")
        ->orWhere('description', 'LIKE', "%$words%")
        ->orderBy('created_at', 'DESC')
        ->get();
        return response()->json(['success' => true, 'ads' => $ads]);
    }

    public function edit (Request $request, $id)
    {
        $validated = $request->validated();

        $ad = Ad::find($id);
        $ad = new Ad();
        $ad->title = $validated['title'];
        $ad->description = $validated['description'];
        $ad->price = $validated['price'];
        $ad->localisation = $validated['localisation'];
        $ad->user_id = auth()->user()->id;
        return redirect()->route('welcome')->with('success', 'Votre annonce a été modifiée.');
        return view('update');

    }
}
