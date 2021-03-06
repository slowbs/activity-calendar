<?php

namespace Laravel;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','username',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function isAdmin()
{
    if($this->role === 0)
    { 
        return true; 
    } 
    else 
    { 
        return false; 
    }
}

public function isUser()
{
    if($this->role === 1)
    { 
        return true; 
    } 
    else 
    { 
        return false; 
    }
}

public function hasRole($role)
{
    return User::where('id', $role)->get();
}
}
