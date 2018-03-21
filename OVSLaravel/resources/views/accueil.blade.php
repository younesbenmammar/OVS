@extends('template')

@section('header')
<li><a href="{{route('utilisateur.create')}}" class="btn btn-light">Inscription</a></li>
<button type="button" class="btn btn-light">Connexion</button>
@endsection



@section('content')

<body id="top">
		<!-- Banner -->
			<section id="banner">

				<div class="inner">
					<h2>Bienvenue sur OUT</h2>
					<p>"Avec OUT <strong>sortez</strong> et <strong>profitez</strong> ensemble"</p>
					<ul class="actions">
						<li><a href="#content" class="button big special">Les Sorties</a></li>
					</ul>
				</div>
			</section>

		<!-- One -->
			<section id="one" class="wrapper style1">
				<header class="major">
					<h2><p>Description site</p></h2>
					<h2>Quelques exemples de sorties : </h2>
				</header>
				<div class="container">
					<div class="row">
						<div class="4u">
							<section class="special box">
								<i class="icon fa-bicycle major"></i>
								<h3>Sortie vélo</h3>
								<p>Hier nous avons fait une sortie vélo sur la journée, heureusement que la pause du déjeuner nous à permis de reprendre du poil de la bête pour repartir.</p>
							</section>
						</div>
						<div class="4u">
							<section class="special box">
								<i class="icon fa-film major"></i>
								<h3>Sortie cinéma</h3>
								<p>Fin de semaine détente, car nous sommes allé au cinéma voir le nouveau film Marvel qui vient de sortir.</p>
							</section>
						</div>
						<div class="4u">
							<section class="special box">
								<i class="icon fa-tint major"></i>
								<h3>Sortie piscine</h3>
								<p>Enfin, le soleil est de retour. Nous choisissons donc une petite sortit piscine pour les enfants et les adultes bien sûr.</p>
							</section>
						</div>
					</div>
				</div>
			</section>	
@endsection