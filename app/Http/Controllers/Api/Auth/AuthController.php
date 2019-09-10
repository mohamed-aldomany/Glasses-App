<?php

namespace App\Http\Controllers\Api\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;
use Illuminate\Support\Carbon;
class AuthController extends Controller
{
    public $successStatus = 200;
    /**
     * login api
     *
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {
        $this->validate($request, [
            'email' => 'required|string|email',
            'password' => 'required|string|max:100|min:8',
        ]);
        if (Auth::attempt(['email' => request('email'), 'password' => request('password')])) {
            $user = Auth::user();

            $objToken = $user->createToken('My App');
            $strToken = $objToken->accessToken;

            $expiration = $objToken->token->expires_at->diffInSeconds(Carbon::now());

            return response()->json([
                "access_token" => $strToken,
                "user" => Auth::user(),
                "token_type" => "Bearer",
                "expires_in" => $expiration
            ]);
        } else {
            return response()->json(['errors' => [['check your data']]], 401);
        }
    }
    /**
     * Register api
     *
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:100|min:8',
            'email' => 'required|string|email|unique:users', 
            'password' => 'required|string|max:100|min:8',
            'c_password' => 'required|same:password|string|max:100|min:8',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 401); 
        }
        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);

        $objToken = $user->createToken('My App');
        $strToken = $objToken->accessToken;

        $expiration = $objToken->token->expires_at->diffInSeconds(Carbon::now());

        return response()->json([
            "access_token" => $strToken,
            "user" => $user,
            "token_type" => "Bearer",
            "expires_in" => $expiration
        ]);
        // $success['token'] =  $user->createToken('MyApp')->accessToken;
        // $success['name'] =  $user->name;
        // return response()->json(['success' => $success], $this->successStatus);
    }

    public function logout(Request $request)
    {

        $token = $request->user()->token();
        $token->revoke();

        $response = 'You have been succesfully logged out!';
        return response($response, 200);
    }
    /**
     * details api
     *
     * @return \Illuminate\Http\Response
     */
    // public function details()
    // {
    //     $user = Auth::user();
    //     return response()->json(['success' => $user], $this->successStatus);
    // }
}
