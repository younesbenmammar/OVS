
@extends('template') @section('contenu')

<div align="center">
	<h1>Les activités du Colibri</h1>




</div>

<div id="colibri">

	@foreach($habitants as $habitant)

	<h1>{{$habitant->id}}</h1>
	<h3>{{ $habitant->title }}</h3>



	<h5>{{ $habitant->date }}</h5>

	<h5>{{ $habitant->hour }} H</h5>


	<h5>{{ $habitant->lieu }} H</h5>

	<p>{{ $habitant->content }}</p>

	





	@endforeach

</div>