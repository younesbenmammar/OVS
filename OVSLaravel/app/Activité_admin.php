<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Activité_admin extends Model
{
    protected $fillable = ['title', 'content', 'statut', 'date', 'hour', 'lieu'];
    
    public $table = "activite_colibri";
    
    public $timestamps = false;
}
