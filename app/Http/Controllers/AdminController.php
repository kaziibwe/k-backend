<?php

namespace App\Http\Controllers;

use auth;
use App\Models\Admin;
use Illuminate\Validation\Rule;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class AdminController extends Controller
{
    //
    public function _construct() {
        $this->middleware('auth:admin-api',['except'=>['adminlogin','adminregister']]);
   }

    public function adminregister(Request $request){

        try {


           $createAdmin = $request->validate([
            'name'=>'required',
            'email' => ['required', 'email', Rule::unique('admins', 'email')],
            'location'=>'required',
            'phone'=>'required',
            'password'=>'required',
           ]);

           if ($request->hasFile('image')) {
            $formFields['image'] = $request->file('image')->store('images', 'public');
        }
        // Hash password
        $formFields['password'] = bcrypt($formFields['password']);
        
        $admin=Admin::create($createAdmin);

        if($admin){
            return response()->json(["Admin"=>$admin,'status'=>true],200);
        }else{
            return response()->json(['status'=>false],500);
        }


} catch (ValidationException $e) {
    // Return JSON response with validation errors
    return response()->json([
        'errors' => $e->errors(), // Detailed validation errors
    ], 422);
} catch (\Exception $e) {
    // Catch any other exceptions and return a generic error response
    return response()->json([
        'error' => $e->getMessage(), // Detailed error message
    ], 500);
}

}





    public function adminlogin(Request $request){
            $credentials = request(['email', 'password']);



            if (! $token = auth()->guard('admin-api')->attempt($credentials)) {
                return response()->json(['error' => 'Unauthorized'], 401);
            }
            return $token;

    }

    // protected function respondWithToken($token)
    // {
    //     return response()->json([
    //         'access_token' => $token,
    //         'token_type' => 'bearer',
    //         'expires_in' => Auth::guard('admin-api')->factory()->getTTL() * 60
    //     ]);
    // }

    public function profileAdmin()
    {
        return response()->json(auth()->guard('admin-api')->user());
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logoutAdmin()
    {
        auth()->guard('admin-api')->logout();

        return response()->json(['message' => 'Successfully logged out']);
    }

}
