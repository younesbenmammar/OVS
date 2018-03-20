<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Users;


class UserController extends Controller
{
    public function index(){
        
        $users = Users::get();
        
        return view('users.index', compact('users'));
        
    }
    
    public function store(Request $request){
        
        $errors = $request->validate([
            
            'firstname' => 'required|between:3, 15',
            'lastname' => 'required|between:3, 15',
            'email' => 'required|email',
            'password' => 'required|between:8,16',
            'numberphone' => 'required|numeric'
            
            
        ]);
        
        
        $users = Users::create($request->all());
        
        return redirect(route('utilisateur.index', $users));
       
        
    }
    
    public function create(){
        
        return view('users.create');
        
    }
    
    public function update($id, Request $request){
        
        $errors = $request->validate([
            
            'firstname' => 'required|between:3, 15',
            'lastname' => 'required|between:3, 15',
            'email' => 'required|email',
            'password' => 'required|between:8,16',
            'numberphone' => 'required|numeric'
            
            
        ]);
        
        
        $users = Users::findOrFail($id);
        
        
        $users->update($request->all());
        
        return redirect(route('utilisateur.index', $id));
    }
    
    public function show(){
        
    }
    
    public function destroy($id){
        
        
    }
    
    public function edit($id){
        
        $users = Users::findOrFail($id);
        
        return view('users.edit', compact('users'));
        
        
        
    }
}
