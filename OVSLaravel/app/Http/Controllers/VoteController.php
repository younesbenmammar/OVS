<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Vote;


class VoteController extends Controller
{
    public function index(){
      
    }
    
    public function store($activiteId){
        
        $vote = new Vote();
        $vote->activite_id = $activiteId;
        $vote->user_id = 6; // fake
        
        $vote->save();
        
        
    }
    
    public function create(){
        
       
        return view('vote.create', compact($activites->id));
        
        
        
    }
    
    public function update($id, Request $request){
       
    }
    
    public function show(){
        
    }
    
    public function destroy($id){
        
        
    }
    
    public function edit($id){
        
       
        
        
    }
}
