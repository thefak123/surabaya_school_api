<?php

namespace App\Http\Middleware;

use App\Models\User;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;

class EnsureAPIKeyIsValid
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // Penambahan header x-api-key untuk check data api
        if ($request->header('x-api-key') != null) {
            $user = User::where("API_KEY", $request->header('x-api-key'))->first();
            if($user == null){
                return response()->json(['status' => false, 'message' => 'API_KEY IS NOT VALID','value' => null]);
            }
        }else{
            return response()->json(['status' => false, 'message' => 'PLEASE PROVIDE API KEY','value' => null]);
        }
        return $next($request);
    }
}
