<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Users extends Model
{
    
    
  //  public $table = "utilisateur";
    
    
    protected $fillable = ['lastname', 'firstname','email', 'password', 'numberphone'];
    
}
