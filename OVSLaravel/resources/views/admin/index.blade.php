@extends('template') @section('contenu')





<br>

<div align="center">
	<h1>Les activité du Colibri</h1>

	<p>
		<a class="btn btn-primary" href="{{ route('admin.create')}}">Nouvelle
			Activité</a>
	</p>


</div>

<div id="colibri">

	@foreach($activites as $activite)

	<h1>{{$activite->id}}</h1>
	<h3>{{ $activite->title }}</h3>



	<h5>{{ $activite->date }}</h5>

	<h5>{{ $activite->hour }} H</h5>


	<h5>{{ $activite->lieu }} H</h5>

	<p>{{ $activite->content }}</p>

	<p>
		<a class="btn btn-primary" href="{{ route('vote', $activite->id) }}">Voter</a>
	</p>





	@endforeach

</div>


<div align="center">
	<h1>Les activités des habitants</h1>


	<p>
		<a class="btn btn-primary" href="{{ route('habitant.create')}}">Nouvelle
			Activité</a>
	</p>

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



<br>
