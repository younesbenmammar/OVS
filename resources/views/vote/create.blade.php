@extends('template')

@section('contenu')



<div align="center">


        
        
  
        
        
{!! Form::open(['url' => route('vote.store')]) !!}

                    



<div class="form-group">

{!! Form::label('activite_id', 'activite_id : ') !!}


{!! Form::text('activite_id', $activites, ['class' => "form-control"]) !!}

</div>




<button class=" btn btn-primary">Envoyer</button>


    
{!! Form::close() !!}
	





@endsection