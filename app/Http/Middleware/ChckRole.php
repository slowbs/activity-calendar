<?php

namespace Laravel\Http\Middleware;

use Closure;
use Auth;

class ChckRole
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, ... $role)
    {
        if (!Auth::check()) // I included this check because you have it, but it really should be part of your 'auth' middleware, most likely added as part of a route group.
            return redirect('login');
    
        $user = Auth::user();
    
        if($user->isAdmin())
            return $next($request);
    
        foreach($role as $role) {
            // Check if user has the role This check will depend on how your roles are set up
            if($user->hasRole($role))
                return $next($request);
        }
    
        return redirect('login');
    }
}
