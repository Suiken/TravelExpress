<%@ page import="model.Publication" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.PublicationsDAO" %>
<%--
Created by IntelliJ IDEA.
User: suiken
Date: 25/05/16
Time: 23:13
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="fr" class="js" data-locale="fr_FR">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">

	<title>Voyagez moins cher en covoiturage | BlaBlaCar</title>

	<link rel="alternate" href="https://www.blablacar.fr/" hreflang="fr-FR">

	<link rel="alternate" href="android-app://com.comuto/blablacar/home?_reverse_proxy%5Bttl%5D=3600&amp;_reverse_proxy%5Buser_auth%5D=1&amp;_locale=fr_FR">

	<meta name="google" content="nositelinkssearchbox">
	<meta name="robots" content="noodp, noydir">
	<meta name="description" content="    BlaBlaCar met en relation des conducteurs qui voyagent avec des places libres avec des passagers recherchant un trajet sur le premier site européen de covoiturage.
	">
	<meta name="keywords" content=" ">

	<link rel="alternate" media="only screen and (max-width: 640px)" href="https://m.blablacar.fr/">



	<!--[if IE]><link href="/v-1465314200/assets/build/css/blablacar_1.css" rel="stylesheet" type="text/css"><![endif]-->
	<!--[if IE]><link href="/v-1465314200/assets/build/css/blablacar_2.css" rel="stylesheet" type="text/css"><![endif]-->

	<link rel="icon" type="image/x-icon" href="favicon.ico">
	<link rel="apple-touch-icon-precomposed" href="https://d1ovtcjitiy70m.cloudfront.net/vi-1/apple-touch-icon.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="https://d1ovtcjitiy70m.cloudfront.net/vi-1/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://d1ovtcjitiy70m.cloudfront.net/vi-1/apple-touch-icon-114x114.png">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://d1ovtcjitiy70m.cloudfront.net/vi-1/apple-touch-icon-144x144.png">

	<meta property="fb:app_id" content="123152947759014">
	<meta property="og:url" content="https://www.blablacar.fr/">

	<meta property="og:locale" content="fr_FR">
	<meta property="og:site_name" content="BlaBlaCar">
	<meta property="og:title" content="Voyagez moins cher en covoiturage">
	<meta property="og:type" content="website">
	<meta property="og:image" content="https://www.blablacar.fr/images/logo-bbc-fb.png">

	<meta name="application-name" content="BlaBlaCar">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="https://www.blablacar.fr/blablacar-pinned-default.png">
	<meta name="msapplication-square70x70logo" content="https://www.blablacar.fr/blablacar-pinned-small.png">
	<meta name="msapplication-square150x150logo" content="https://www.blablacar.fr/blablacar-pinned-medium.png">
	<meta name="msapplication-wide310x150logo" content="https://www.blablacar.fr/blablacar-pinned-wide.png">
	<meta name="msapplication-square310x310logo" content="https://www.blablacar.fr/blablacar-pinned-large.png">

	<link rel="image_src" href="https://d1ovtcjitiy70m.cloudfront.net/vi-1/images/logo.gif">


        <link rel="stylesheet" type="text/css" href="index.css" media="all">
    </head>
    <body itemscope="" itemtype="http://schema.org/Article">
    	<div id="skip-link"><a href="#maincontent">Aller au contenu</a></div>
    <!--[if lt IE 9]>
        <div class="browser-message">
            <p>
                <strong>
                Ceci est bien embêtant
                </strong>
                Vous utilisez un navigateur trop ancien pour utiliser ce site.
                <br />
                Si vous le pouvez, <a href="https://www.google.com/chrome" target="_blank">installez un navigateur récent</a>. Vous risquez sinon des problèmes de compatibilités.
            </p>
        </div>
        <![endif]-->





        <div class="page">
        	<header class="site-header" role="banner" data-error="Une erreur est survenue. Réessayez plus tard.">

        		<div class="container clearfix">
        			<a href="/" class="logo js-optInExcluded">
        				<img src="res/blablacar-logo-290x48.png" alt="BlaBlaCar" height="24" width="145">
        			</a>

        			<input id="async_toolbar" value="1" type="hidden">
        			<input id="async_toolbar_url" value="/login/is-logged" type="hidden">

        			<nav class="site-menu" role="navigation">
        				<ul class="unstyled no-margin">
        					<li class="site-menu-user">
        						<ul class="unstyled no-margin">
        							<li>
        								<a href="signup">Inscription</a>
        							</li>
        							<li>
        							<a href="signin" class="login-link login-toggle" aria-haspopup="true" aria-expanded="false" role="button">Connexion</a>
        								<div class="login-container">
        									<div style="display: none;" class="login form-register">
        										<span class="login-arrow"></span>
        										<div class="text-intro"></div>

        										<div class="social-signin facebook-signin">
        											<a href="http://www.blablacar.fr/connect/facebook" class="btn-social btn-facebook white js-oauth-connect" data-provider="facebook">
        												<i class="bbc-icon2-facebook-logo size26 first white push-left" aria-hidden="true"></i>
        												Connexion avec Facebook
        											</a>
        										</div>


        										<p class="smallprint margin-top align-center">
        											Nous ne publions rien sur votre mur sans votre accord
        										</p>


        										<div class="signin">
        											<strong class="display-block">Pas encore membre ?</strong>
        											<a class="blue" href="signin">
        												Inscrivez-vous gratuitement
        											</a>
        										</div>
        									</div>
        								</div>
        							</li>
        							<li class="margin-half-right no-border">
        								<a href="https://www.blablacar.fr/comment-ca-marche" class="help">Comment ça marche</a>
        							</li>
        						</ul>

        					</li>


        				</ul>

        			</nav>
        		</div>
        	</header>

        	<div id="maincontent" class="container" role="main">
        		<div class="flash-template alert no-icon hide clearfix" data-level-class="alert-LEVEL" data-message-selector=".flash-content">
        			<a class="close" data-dismiss="alert" href="#">×</a>
        			<i class="size26 pull-left no-margin-left margin-half-right" aria-hidden="true"></i>
        			<p class="flash-content overflow-hidden"></p>
        		</div>



        		<div class="hp-hero">
        			<div class="hp-hero-search u-clearfix">
        				<h1 class="margin-half-bottom">Trouvez votre covoiturage</h1>
        				<form id="search-form" class="search-form no-margin" method="POST" action="search">

        					<div class="from">
        						<input value="" id="departure" data-autocomplete="name" name="departure" title="De" placeholder="De" class="search-from place-autocomplete no-margin-bottom" autocomplete="off" type="text">
        						<input name="fc" data-autocomplete="coordinates" data-autocomplete-ref="search_from_name" type="hidden">
        						<input name="fcc" data-autocomplete="country_code" data-autocomplete-ref="search_from_name" type="hidden">
        					</div>

        					<div class="to">
        						<input value="" id="arrival" data-autocomplete="name" name="arrival" title="À" placeholder="À" class="search-to place-autocomplete no-margin-bottom" autocomplete="off" type="text">
        						<input name="tc" data-autocomplete="coordinates" data-autocomplete-ref="search_to_name" type="hidden">
        						<input name="tcc" data-autocomplete="country_code" data-autocomplete-ref="search_to_name" type="hidden">
        					</div>

        					<button class="btn-2action btn-large size22" type="submit">Rechercher</button>
        				</form>

        			</div>

        			<div class="hp-hero-banner">
        				<h2 class="size16 u-gray">Voyagez moins cher en toute confiance</h2>
        			</div>

        			<a href="https://www.blablacar.fr/proposer" class="hp-hero-driver padding u-alignCenter">
        				<h2 class="no-margin margin-half-bottom u-gray size16">Vous avez une voiture&nbsp;?</h2>
        				<p class="size20 u-blue">
        					<strong>Publiez une annonce</strong>
        				</p>
        			</a>

        			<div class="hp-hero-footer">
        				<h2 class="margin-bottom u-alignCenter size22">30 millions de membres aux profils vérifiés pour voyager en toute sérénité
        				</h2>

        				<ul class="u-reset testimony u-clearfix">
        					<li class="u-left no-margin">
        						<img src="res/user-picture-01_fr_fr.jpg" alt="" class="u-left margin-half-right" height="60" width="60">
        						<div class="testimony-message u-right">
        							<i class="bbc-icon-star yellow-star" aria-hidden="true"></i>
        							Avis laissé à <strong>Florent S</strong>
        							<blockquote class="no-border no-padding no-margin">
        								<p class="size12 thin-font"> «&nbsp;Trajet très agréable, rapide et très sympa. Vous pouvez lui faire confiance, n'hésitez pas à covoiturer avec Florent.&nbsp;» <span class="author bold">Corinne C</span></p>
        							</blockquote>
        						</div>
        					</li>
        					<li class="u-left  margin-left">
        						<img src="res/user-picture-02_fr_fr.jpg" alt="" class="u-left margin-half-right" height="60" width="60">
        						<div class="testimony-message u-right">
        							<i class="bbc-icon-star yellow-star" aria-hidden="true"></i>
        							Avis laissé à <strong>Patricia B</strong>
        							<blockquote class="no-border no-padding no-margin">
        								<p class="size12 thin-font">«&nbsp;Passagers ponctuels et très sympathiques. Le voyage Lyon-Paris est passé très vite.&nbsp;» <span class="author bold">Dominique S</span></p>
        							</blockquote>
        						</div>
        					</li>
        					<li class="u-right no-margin">
        						<img src="res/user-picture-03_fr_fr.jpg" alt="" class="u-left margin-half-right" height="60" width="60">
        						<div class="testimony-message u-right">
        							<i class="bbc-icon-star yellow-star" aria-hidden="true"></i>
        							Avis laissé à <strong>William L</strong>
        							<blockquote class="no-border no-padding no-margin">
        								<p class="size12 thin-font">«&nbsp;Excellent trajet avec William, très convivial et ponctuel !&nbsp;» <span class="author bold">Marion C</span></p>
        							</blockquote>
        						</div>
        					</li>
        				</ul>
        			</div>
        		</div>

				<%
					ArrayList<Publication> publications = (ArrayList<Publication>) request.getAttribute("publications");
					if(publications != null){
				%>
				<hr/>
				<h3>Publications</h3>
				<br/>
					<%
						for(Publication publication : publications){
					%>
					<table>
						<form method="POST" action="reservations">
							<input type="hidden" name="id" value="<%= publication.getId() %>" />
							<input type="hidden" name="nbPlaces" value="<%= publication.getNbPlaces()%>" />
							<tr>
								<td>De <%= publication.getDeparture() %></td>
								<td>à <%= publication.getArrival() %></td>
							</tr>
							<tr>
								<td>le <%= publication.getRunDate() %></td>
							</tr>
							<tr>
								<td>Description :</td>
								<td><%= publication.getContent() %></td>
							</tr>
							<tr>
								<td><%= publication.getNbPlaces() %> places restantes</td>
								<td><input type="submit" value="Réserver" /></td>
							</tr>
						</form>
					</table>
				<br/>
					<%
						}
					%>
				<%
					}
				%>
        		<div class="row homepage-features">
        			<div class="span4 homepage-feature homepage-feature-left">
        				<h2>
        					<a href="https://www.blablacar.fr/comment-ca-marche">
        						Comment ça marche
        					</a>
        				</h2>

        				<div class="img-block video no-top-padding">
        					<a href="https://www.youtube.com/watch?v=iPXLIzfqFPQ" class="play-button" data-title="Voir la vidéo">
        						<img src="res/home-new-video_fr_fr.png" alt="Voir la vidéo">
        					</a>
        				</div>

        			</div>

        			<div class="span4 homepage-feature slider-feature-axes no-left-margin padding-right" aria-hidden="true">
        				<h2>
        					Bons plans
        				</h2>

        				<div id="carousel-axes" class="carousel slide carousel-fade no-margin padding no-top-padding">
        					<!-- Carousel items -->
        					<ul class="unstyled no-margin carousel-inner">
        						<li class="item">

        							<a href="https://www.blablacar.fr/search?fn=paris&amp;tn=lyon" class="display-block clearfix">
        								<span class="axe pull-left">
        									<span class="departure">
        										<i class="bbc-icon2-circle size18 location-circle green" aria-hidden="true"></i>
        										PARIS
        									</span>
        									<span class="arrival">
        										<i class="bbc-icon2-circle size18 location-circle red" aria-hidden="true"></i>
        										LYON
        									</span>
        								</span>
        								<span class="price price-medium pull-right">
        									à partir de
        									<span>20&nbsp;€</span>
        									<span class="price-detail">Par passager</span>
        								</span>
        							</a>
        						</li>
        						<li class="item">

        							<a href="https://www.blablacar.fr/search?fn=lille&amp;tn=paris" class="display-block clearfix">
        								<span class="axe pull-left">
        									<span class="departure">
        										<i class="bbc-icon2-circle size18 location-circle green" aria-hidden="true"></i>
        										LILLE
        									</span>
        									<span class="arrival">
        										<i class="bbc-icon2-circle size18 location-circle red" aria-hidden="true"></i>
        										PARIS
        									</span>
        								</span>
        								<span class="price price-medium pull-right">
        									à partir de
        									<span>10&nbsp;€</span>
        									<span class="price-detail">Par passager</span>
        								</span>
        							</a>
        						</li>
        						<li class="item">

        							<a href="https://www.blablacar.fr/search?fn=bordeaux&amp;tn=toulouse" class="display-block clearfix">
        								<span class="axe pull-left">
        									<span class="departure">
        										<i class="bbc-icon2-circle size18 location-circle green" aria-hidden="true"></i>
        										BORDEAUX
        									</span>
        									<span class="arrival">
        										<i class="bbc-icon2-circle size18 location-circle red" aria-hidden="true"></i>
        										TOULOUSE
        									</span>
        								</span>
        								<span class="price price-medium pull-right">
        									à partir de
        									<span>10&nbsp;€</span>
        									<span class="price-detail">Par passager</span>
        								</span>
        							</a>
        						</li>
        						<li class="item active">

        							<a href="https://www.blablacar.fr/search?fn=nantes&amp;tn=rennes" class="display-block clearfix">
        								<span class="axe pull-left">
        									<span class="departure">
        										<i class="bbc-icon2-circle size18 location-circle green" aria-hidden="true"></i>
        										NANTES
        									</span>
        									<span class="arrival">
        										<i class="bbc-icon2-circle size18 location-circle red" aria-hidden="true"></i>
        										RENNES
        									</span>
        								</span>
        								<span class="price pull-right">
        									à partir de
        									<span>5&nbsp;€</span>
        									<span class="price-detail">Par passager</span>
        								</span>
        							</a>
        						</li>
        					</ul>
        				</div>
        			</div>

        			<div class="span4 homepage-feature homepage-feature-right no-left-margin">
        				<h2>
        					<a href="https://www.blablacar.fr/apps-blablacar-mobile">Téléchargez l'appli</a>
        				</h2>

        				<a href="https://www.blablacar.fr/apps-blablacar-mobile" class="display-block align-center">
        					<img src="res/bloc-mobileapp.png" alt="Découvrez l'application mobile gratuite de covoiturage BlaBlaCar">
        				</a>

        			</div>
        		</div>



        		<section class="top-departure dropdown clearfix">
        			<a href="https://www.blablacar.fr/trajets/" class="dropdown-toggle top-departure-link display-block margin-half-bottom align-center size14" data-toggle="dropdown" data-target="#">
        				Découvrez les villes les plus populaires : Paris, Toulouse, Lyon, Lille, Marseille, Bordeaux...
        			</a>
        			<div class="dropdown-menu">
        				<div class="row">
        					<h2>Découvrez les 21 trajets les plus populaires :</h2>
        					<div class="span4">
        						<ul class="unstyled top-departure-list">
        							<li>
        								<a href="https://www.blablacar.fr/trajets/paris/">
        									Covoiturage au départ de Paris
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/toulouse/">
        									Covoiturage au départ de Toulouse
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/lyon/">
        									Covoiturage au départ de Lyon
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/rennes/">
        									Covoiturage au départ de Rennes
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/nantes/">
        									Covoiturage au départ de Nantes
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/montpellier/">
        									Covoiturage au départ de Montpellier
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/bordeaux/">
        									Covoiturage au départ de Bordeaux
        								</a>
        							</li>
        						</ul>
        					</div>
        					<div class="span4">
        						<ul class="unstyled top-departure-list">
        							<li>
        								<a href="https://www.blablacar.fr/trajets/clermont-ferrand/">
        									Covoiturage au départ de Clermont-Ferrand
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/valence/">
        									Covoiturage au départ de Valence
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/tours/">
        									Covoiturage au départ de Tours
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/angers/">
        									Covoiturage au départ de Angers
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/aix-en-provence/">
        									Covoiturage au départ de Aix-en-Provence
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/grenoble/">
        									Covoiturage au départ de Grenoble
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/poitiers/">
        									Covoiturage au départ de Poitiers
        								</a>
        							</li>
        						</ul>
        					</div>
        					<div class="span4">
        						<ul class="unstyled top-departure-list">
        							<li>
        								<a href="https://www.blablacar.fr/trajets/le-mans/">
        									Covoiturage au départ de Le Mans
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/nimes/">
        									Covoiturage au départ de Nîmes
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/orleans/">
        									Covoiturage au départ de Orléans
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/limoges/">
        									Covoiturage au départ de Limoges
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/caen/">
        									Covoiturage au départ de Caen
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/narbonne/">
        									Covoiturage au départ de Narbonne
        								</a>
        							</li>
        							<li>
        								<a href="https://www.blablacar.fr/trajets/vannes/">
        									Covoiturage au départ de Vannes
        								</a>
        							</li>
        						</ul>
        					</div>
        					<div class="span12 top-departure-footer">
        						<a href="https://www.blablacar.fr/trajets/" class="blue">→ Voir tous les autres trajets</a>
        					</div>
        				</div>
        			</div>
        		</section>


        		<div class="row press no-margin padding-top padding-half-bottom">
        			<a href="https://www.blablacar.fr/blog/presse-et-medias" class="display-block">
        				<h2 class="press-title no-margin pull-left">
        					Vu dans la presse
        				</h2>
        				<ul class="list-medias unstyled no-margin overflow-hidden">
        					<li class="pull-left margin-left margin-half-bottom">
        						<img src="res/20minutes.png" alt="20 minutes">
        					</li>
        					<li class="pull-left margin-left margin-half-bottom">
        						<img src="res/le-monde.png" alt="Le monde">
        					</li>
        					<li class="pull-left margin-left margin-half-bottom">
        						<img src="res/tf1.png" alt="TF1">
        					</li>
        					<li class="pull-left margin-left margin-half-bottom">
        						<img src="res/france-2.png" alt="France 2">
        					</li>
        					<li class="pull-left margin-left margin-half-bottom">
        						<img src="res/france-inter.png" alt="France Inter">
        					</li>
        					<li class="pull-left margin-left margin-half-bottom">
        						<img src="res/bbc-news.png" alt="BBC News">
        					</li>
        				</ul>
        			</a>
        		</div>

        		<div class="row homepage-explanations padding clearfix">
        			<div class="span4 explanation-driver margin-bottom">
        				<h2 class="align-left"><span class="display-block">Conducteurs :</span> Réduisez vos frais de route</h2>
        				<p>Ne voyagez plus seul ! Faites des économies sur vos frais en prenant des passagers lors de vos longs trajets en voiture.
        				</p>
        				<img src="res/instant-film-driver2.png" alt="" class="pull-left margin-half-right">
        				<a href="https://www.blablacar.fr/comment-ca-marche#drvr" class="display-block overflow-hidden margin-top padding-top blue">Le covoiturage côté conducteur</a>
        			</div>

        			<div class="span4 explanation-passenger margin-bottom">
        				<h2 class="align-left"><span class="display-block">Passagers :</span> Voyagez moins cher
        				</h2>
        				<p>Réservez facilement votre place en ligne et voyagez moins cher, même à la dernière minute !</p>
        				<img src="res/instant-film-passenger.png" alt="" class="pull-left margin-half-right">
        				<a href="https://www.blablacar.fr/comment-ca-marche" class="display-block overflow-hidden margin-top padding-top blue">Le covoiturage côté passager
        				</a>
        			</div>
        			<div class="span4 explanation-trust margin-bottom">
        				<h2 class="u-alignLeft">Mieux protégé avec l'assurance additionnelle AXA offerte</h2>
        				<p>Vous bénéficiez gratuitement de garanties AXA dédiées, en plus de l'assurance auto du conducteur.</p>
        				<i class="bbc-icon2-shield u-green u-left margin-half-top margin-half-right margin-half-left" aria-hidden="true"></i>
        				<a href="https://www.blablacar.fr/assurance-covoiturage" class="u-block overflow-hidden margin-top padding-top u-blue">L'assurance additionnelle offerte</a>
        				<img src="res/axa-logo-right-h60_fr_fr.png" class="u-right margin-top" alt="Axa, redefining standards" height="30">

        			</div>
        		</div>

        	</div>


        	<footer class="footer-container" role="contentinfo">
        		<section class="site-footer">
        			<div class="row">
        				<div class="relative span4">
        					<h2>
        						Infos pratiques 
        					</h2>
        					<ul class="footer-list">



        						<li class="
        						first                            ">
        						<a href="https://www.blablacar.fr/comment-ca-marche">
        							Comment ça marche
        						</a>
        					</li>



        					<li class="
        					">
        					<a href="https://www.blablacar.fr/confiance-fiabilite">
        						Confiance et sérénité
        					</a>
        				</li>



        				<li class="
        				">
        				<a href="https://www.blablacar.fr/assurance-covoiturage">
        					Assurance et covoiturage
        				</a>
        			</li>



        			<li class="
        			">
        			<a href="https://www.blablacar.fr/niveau-experience">
        				Niveaux d'expérience
        			</a>
        		</li>



        		<li class="
        		">
        		<a href="https://www.blablacar.fr/apps-blablacar-mobile">
        			Application mobile
        		</a>
        	</li>



        	<li class="
        	">
        	<a href="https://www.blablacar.fr/blog/les-avis">
        		Les avis
        	</a>
        </li>
        


        <li class="
        ">
        <a href="https://www.blablacar.fr/blog/ladies-only-fr">
        	Entre femmes
        </a>
    </li>



    <li class="
    ">
    <a href="https://www.blablacar.fr/conseils-prevention">
    	Conseils prévention
    </a>
</li>



<li class="
">
<a href="https://www.blablacar.fr/blog/prix-du-covoiturage">
	Prix du covoiturage 
</a>
</li>



<li class="
">
<a href="https://www.blablacar.fr/faq">
	FAQ
</a>
</li>



<li class="
footer-contact            ">
<a href="https://www.blablacar.fr/contact">
	Contact
</a>
</li>
</ul>

</div>
<div class="relative span4">
	<h2>
		A propos
	</h2>
	<ul class="footer-list">



		<li class="
		first                            ">
		<a href="https://www.blablacar.fr/blog/qui-sommes-nous">
			Qui sommes-nous ?
		</a>
	</li>



	<li class="
	">
	<a href="https://www.blablacar.fr/blog/temoignages">
		Témoignages et anecdotes
	</a>
</li>



<li class="
">
<a href="https://www.blablacar.fr/goodies">
	Demandez vos stickers BlaBlaCar
</a>
</li>



<li class="
">
<a href="https://www.blablacar.fr/blog/presse">
	Presse
</a>
</li>



<li class="
">
<a href="https://www.blablacar.fr/blog/recrutement">
	Nous recrutons
</a>
</li>



<li class="
">
<a href="https://www.blablacar.fr/blog/widget-partenaires">
	Partenaires
</a>
</li>



<li class="
js-optInExcluded            ">
<a href="https://www.blablacar.fr/blog/utilisation-des-cookies">
	Utilisation des cookies
</a>
</li>



<li class="
">
<a href="https://www.blablacar.fr/charte-de-bonne-conduite">
	Charte de bonne conduite
</a>
</li>



<li class="
">
<a href="https://www.blablacar.fr/blog/conditions-generales">
	Conditions générales
</a>
</li>
</ul>

</div>
<div class="relative span4">
	<h2>
		BlaBla News
	</h2>
	<ul class="footer-list">
		<li class="first">
			<div class="clearfix">
				<div class="home-blog-post-illustration">
					<a href="https://www.blablacar.fr/blog/jeu-festivals">
						<img src="res/blogthumbnail_festival_120x90_v01.jpg" alt="Direction les festivals !" width="88">
					</a>
				</div>
				<div class="home-blog-post-text">
					<h3>
						<a href="https://www.blablacar.fr/blog/jeu-festivals">
							Direction les festivals !
						</a>
					</h3>
					<p>
						<a href="https://www.blablacar.fr/blog/jeu-festivals">

							Bonjour à tous,
							Cet été, la BlaBlaTeam vous donne rendez-vous sur 4 festivals en France : Hellfest, Musilac, ...                            </a>
						</p>
					</div>
				</div>
			</li>
		</ul>
		<ul class="footer-list">
			<li>
				<div class="clearfix">
					<div class="home-blog-post-illustration">
						<a href="https://www.blablacar.fr/blog/blabladay">
							<img src="res/vignette-bbday2016.png" alt="Vous êtes invités au BlaBlaDay !" width="88">
						</a>
					</div>
					<div class="home-blog-post-text">
						<h3>
							<a href="https://www.blablacar.fr/blog/blabladay">
								Vous êtes invités au BlaBlaDay !
							</a>
						</h3>
						<p>
							<a href="https://www.blablacar.fr/blog/blabladay">

								Bonjour à tous,
								Dimanche&nbsp;29 mai prochain, rendez-vous à la 3ème édition de notre BlaBlaDay&nbsp;au parc de la Vill...                            </a>
							</p>
						</div>
					</div>
				</li>
			</ul>
			<ul class="footer-list">
				<li class=" footer-contact">
					<a href="https://www.blablacar.fr/blog">
						Voir tous les articles du blog
					</a>
				</li>
			</ul>
		</div>
	</div>
</section>
<section class="periphal-link-footer">
	<div class="row">


		<div class="span3">
			<h2>
				Retrouvez-nous sur :
			</h2>
			<ul class="footer-social-network-list">

				<li><a href="https://www.youtube.com/c/BlaBlaCarFR" class="youtube"><span>Youtube</span></a></li>
				<li><a href="https://twitter.com/BlaBlaCar_FR" class="twitter"><span>Twitter</span></a></li>
				<li><a href="https://fr-fr.facebook.com/blablacar.fr" class="facebook"><span>Facebook</span></a></li>
				<li><a href="https://plus.google.com/+BlaBlaCarFR" rel="publisher" class="google-plus"><span>Google+</span></a></li>
				<li><a href="https://instagram.com/blablacarfr" class="instagram"><span>Instagram</span></a></li>
			</ul>
			<p class="footer-copyright">
				BlaBlaCar, 2016 ©
			</p>
		</div>

		<div class="span3">
			<h2>
				Indiquez votre pays
			</h2>
			<div class="btn-group">
				<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
					<span class="flag fr_fr"></span>
					France
					<span class="margin-half-left vertical-middle bold size18 pale-gray">€</span>
				</a>
				<div class="dropdown-menu clearfix">
					<ul class="left-column">

						<li>
							<a rel="nofollow" href="https://www.blablacar.fr/" id="lang-fr_FR" class="js-optInExcluded">
								<span class="flag fr_fr"></span> France
							</a>
						</li>

					</ul>
				</div>
			</div>
		</div>
	</div>

</section>
</footer>

</div>

















<!-- Marketing button manager -->
<!-- end  -->




<!-- Google Tag Manager -->


<!-- End Google Tag Manager -->


<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>


</body>
</html>
