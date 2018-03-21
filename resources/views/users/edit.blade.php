@extends('template')

@section('contenu')



<div align="center">

<br>


        <h1>Modifier Votre Profil</h1>
        
        
        
 </div>       
        
        
{!! Form::open(['method' => 'put', 'url' => route('utilisateur.update', $users)]) !!}

                    
<div class="form-group">

{!! Form::label('lastname', 'Nom : ') !!}


{!! Form::text('lastname', $users->lastname, ['class' => "form-control"]) !!}

</div>


<div class="form-group">

{!! Form::label('firstname', 'Prénom : ') !!}


{!! Form::text('firstname', $users->firstname, ['class' => "form-control"]) !!}

</div>



<div class="form-group">

{!! Form::label('email', 'E-mail : ') !!}


{!! Form::text('email', $users->email, ['class' => "form-control"]) !!}

</div>

<div class="form-group">

{!! Form::label('password', 'Mot de Passe : ') !!}


{!! Form::text('password', $users->password, ['class' => "form-control"]) !!}

</div>


<div class="form-group">

{!! Form::label('numberphone', 'Numéro : ') !!}


{!! Form::text('numberphone', $users->numberphone, ['class' => "form-control"]) !!}

</div>


<button class=" btn btn-primary">Modifier</button>


    
{!! Form::close() !!}
@endsection