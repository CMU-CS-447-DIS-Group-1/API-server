<?php

namespace App\Http\Controllers\API;

use Auth;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $request = $request->only('email', 'password');
        $output['code'] = 0;
        if (Auth::attempt(['email' => $request['email'], 'password' => $request['password']])) {
            $api_token = Str::random(60);
            $user = Auth::user();
            $user->api_token = $api_token;
            $user->save();
            $output = [
                'code' => 1,
                'api_token' => $api_token,
            ];
        }

        return json_encode($output);
    }

    public function logout()
    {
        $output['code'] = 0;
        if (Auth::check()) {
            $user = Auth::user();
            $user->api_token = null;
            $user->save();
            $output['code'] = 1;
        }

        return json_encode($output);
    }
}
