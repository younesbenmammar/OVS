@extends('template')


@section ('title')


SALUT

@endsection
@section('content')

	@foreach($users as $user)
	
	
	<h1>{{ $user->lastname }}</h1>
	

	<p> {{ $user->firstname }} </p>
	<p> <a class="btn btn-primary" href="{{ route('utilisateur.edit', $user) }}">Editer</a> </p>
		
		
	@endforeach
	

@stop