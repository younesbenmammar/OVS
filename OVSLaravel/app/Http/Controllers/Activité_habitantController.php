<?php



namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Activité_habitant;

class Activité_habitantController extends Controller
{

    public function index()
    {
       
        $habitants = Activité_habitant::get();
        
        return view('admin.index', compact('habitants'));
    }
    
   

    public function store(Request $request)
    {
        $habitants = Activité_habitant::create($request->all());
        return redirect(route('habitant.index', $habitants));
    }
    
    

    public function create()
    {
        return view('habitant.create');
    }

    public function update($id, Request $request)
    {}

    public function show()
    {}

    public function destroy($id)
    {}

    public function edit($id)
    {}
}
