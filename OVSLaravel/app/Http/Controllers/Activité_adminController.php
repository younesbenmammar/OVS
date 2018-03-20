<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Activité_admin;

class Activité_adminController extends Controller
{
    public function index(){
        
        $activites = Activité_admin::get();
        return view('admin.index', compact('activites'));
        
    }
    
    public function store(Request $request){
        
        $admin = Activité_admin::create($request->all());
        return redirect(route('admin.index', $admin));
        
        
    }
    
    public function create(){
        
        return view('admin.create');
        
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
