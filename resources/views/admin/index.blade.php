@extends('template')

@section('content')





<br>

<div align="center">
        <h1>Les activité du Colibri</h1>
        
     </div>   
 	@foreach($activites as $activite)
	
	<h1>{{$activite->id}}</h1>
	<h3>{{ $activite->title }}</h3>
	
	<p> <a class="btn btn-primary" href="{{ route('vote', $activite->id) }}">Voter</a> </p>
	
	<h5>{{ $activite->date }}</h5>
	
	<h5>{{ $activite->hour }} H </h5>
	
	
	<h5>{{ $activite->lieu }} H </h5>
	
	<p> {{ $activite->content }} </p>
	
	
	
		
		
	@endforeach
	





@endsection