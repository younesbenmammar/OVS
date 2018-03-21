<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Activité_habitant extends Model
{
    protected $fillable = ['title', 'content', 'statut', 'date', 'hour', 'lieu'];
    
    public $table = "activite_habitant";
}
