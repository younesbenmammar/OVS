@extends('template')

@section('contenu')



<div align="center">

<br>


        <h1>Ajouter une nouvelle activité </h1>
        
                @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
        
        
        
 </div>       
        
        
{!! Form::open(['url' => route('admin.store')]) !!}

                    



<div class="form-group">

{!! Form::label('title', 'Titre : ') !!}


{!! Form::text('title', null, ['class' => "form-control"]) !!}

</div>


<div class="form-group">

{!! Form::label('date', 'Date de la sortie : ') !!}


{!! Form::date('date', null, ['class' => "form-control"]) !!}

</div>

<div class="form-group">

{!! Form::label('hour', 'Heure de début : ') !!}


{!! Form::selectRange('hour', 0, 24, ['class' => "form-control"]) !!}

</div>


<div class="form-group">

{!! Form::label('lieu', 'Lieu de la Sortie : ') !!}


{!! Form::text('lieu', null, ['class' => "form-control"]) !!}

</div>


<div class="form-group">

{!! Form::label('content', 'Description : ') !!}


{!! Form::text('content', null, ['class' => "form-control"]) !!}

</div>



<div class="form-group">

{!! Form::label('statut', 'statut : ') !!}


{!! Form::text('statut', 'Admin', ['class' => "form-control"]) !!}

</div>




<button class=" btn btn-primary">Envoyer</button>


    
{!! Form::close() !!}
	





@endsection