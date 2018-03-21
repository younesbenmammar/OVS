@extends('template')

@section('header')
<li><a href="{{route('utilisateur.create')}}" class="button special">Inscription</a></li>
<li><a href="#" class="button special">Connection</a></li>
@endsection


@section('content')



<div align="center">

<br>


        <h1>Ajouter un nouvel Utilisateur</h1>
        
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
        
        
{!! Form::open(['url' => route('utilisateur.store')]) !!}

                    
<div class="form-group">

{!! Form::label('lastname', 'Nom : ') !!}


{!! Form::text('lastname', null, ['class' => "form-control"]) !!}

</div>


<div class="form-group">

{!! Form::label('firstname', 'Prénom : ') !!}


{!! Form::text('firstname', null, ['class' => "form-control"]) !!}

</div>



<div class="form-group">

{!! Form::label('password', 'password : ') !!}


{!! Form::text('password', null, ['class' => "form-control"]) !!}

</div>


<div class="form-group">

{!! Form::label('email', 'email : ') !!}


{!! Form::text('email', null, ['class' => "form-control"]) !!}

</div>


<div class="form-group">

{!! Form::label('numberphone', 'Numéro : ') !!}


{!! Form::text('numberphone', null, ['class' => "form-control"]) !!}

</div>


<button class=" btn btn-primary">Envoyer</button>


    
{!! Form::close() !!}
	





@endsection



