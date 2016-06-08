<%@ page import="model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="fr" class="js" data-locale="fr_FR">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">

    <title>Tableau de bord | BlaBlaCar</title>

    <meta name="description" content="BlaBlaCar met en relation des conducteurs qui voyagent avec des places libres avec des passagers recherchant un trajet sur le premier site européen de covoiturage.">
    <meta name="keywords" content=" ">

    <link rel="alternate" media="only screen and (max-width: 640px)" href="https://m.blablacar.fr/dashboard">



    <!--[if IE]><link href="/v-1465314200/assets/build/css/blablacar_1.css" rel="stylesheet" type="text/css"><![endif]-->
    <!--[if IE]><link href="/v-1465314200/assets/build/css/blablacar_2.css" rel="stylesheet" type="text/css"><![endif]-->

    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="https://d1ovtcjitiy70m.cloudfront.net/vi-1/apple-touch-icon.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="https://d1ovtcjitiy70m.cloudfront.net/vi-1/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://d1ovtcjitiy70m.cloudfront.net/vi-1/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://d1ovtcjitiy70m.cloudfront.net/vi-1/apple-touch-icon-144x144.png">

    <meta property="fb:app_id" content="123152947759014">
    <meta property="og:url" content="https://www.blablacar.fr/dashboard">

    <meta property="og:locale" content="fr_FR">
    <meta property="og:site_name" content="BlaBlaCar">
    <meta property="og:title" content="Tableau de bord">
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

    <link rel="stylesheet" type="text/css" href="../../profile.css" media="all">

</head>
<body itemscope="" itemtype="http://schema.org/Article">
<%
    User user = (User) request.getAttribute("user");
%>
<div id="skip-link"><a href="#maincontent">Aller au contenu</a>
</div>
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
            <a href="https://www.blablacar.fr/" class="logo js-optInExcluded">
                <img src="res/blablacar-logo-290x48.png" alt="BlaBlaCar" height="24" width="145">
            </a>


            <nav class="site-menu" role="navigation">
                <ul class="unstyled no-margin">
                    <li class="menu-btn size13">
                        <a href="https://www.blablacar.fr/recherche-covoiturage" class="btn-2action">
                            Rechercher
                        </a>
                        <span class="btn-separator">ou</span>
                        <a class="btn-edition" href="https://www.blablacar.fr/proposer">Proposer un trajet</a>
                    </li>
                    <li class="site-menu-user logged">
                        <ul class="unstyled no-margin">
                            <li class="messages">
                                <a href="https://www.blablacar.fr/messages/received" rel="nofollow">
                                    <span class="visually-hidden">Aucun message</span>
                                </a>
                                <input id="async_toolbar_logged" value="1" type="hidden">
                            </li>
                            <li class="alerts">
                                <a href="https://www.blablacar.fr/dashboard" rel="nofollow">
                                    <span class="badge-notification">2</span>
                                    <span class="visually-hidden">notifications non lues</span>
                                </a>
                            </li>
                            <li class="user-profil dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="button">
                                    <img title="" oldtitle="<%= user.getFirstName() + " " + user.getLastName() %>" data-hasqtip="5" class="PhotoWrapper-user PhotoWrapper-user--smallest tip" alt="user" src="res/passenger-male-18.png" style="width: 18; height: 18;" data-placement="bottom" height="18" width="18"><%= user.getFirstName() %><i class="caret" aria-hidden="true"></i>
                                </a>
                                <ul class="dropdown-menu size14" role="menu" aria-labelledby="dLabel">
                                    <li class="pad">
                                        <a href="https://www.blablacar.fr/dashboard">Tableau de bord</a>
                                    </li>
                                    <li class="divider" aria-hidden="true"></li>
                                    <li>
                                        <a href="https://www.blablacar.fr/dashboard/trip-offers/active">Vos annonces</a>
                                    </li>
                                    <li>
                                        <a href="https://www.blablacar.fr/dashboard/my-bookings">Vos réservations</a>
                                    </li>
                                    <li>
                                        <a href="https://www.blablacar.fr/dashboard/profile/general">Profil</a>
                                    </li>

                                    <li>
                                        <a href="https://www.blablacar.fr/deconnexion">Se déconnecter</a>
                                    </li>
                                    <li class="divider" aria-hidden="true"></li>
                                </ul>
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



        <div class="tab-container">
            <div class="tab-details">
                <ul class="nav nav-tabs new" id="myTab">
                    <li class="active">
                        <a href="https://www.blablacar.fr/dashboard">Tableau de bord</a>
                    </li>
                    <li>
                        <a href="https://www.blablacar.fr/dashboard/trip-offers/active">Vos annonces</a>
                    </li>
                    <li>
                        <a href="https://www.blablacar.fr/dashboard/my-bookings">Vos réservations</a>
                    </li>
                    <li>
                        <a href="https://www.blablacar.fr/dashboard/profile/general">Profil</a>
                    </li>

                </ul>
            </div>

            <section class="dashboard-container clearfix">
                <div class="dashboard-header padding margin-bottom clearfix experience">

                    <h1 class="user-presentation pull-left no-margin">
                                    <span class="insert-photo">
                        <a href="https://www.blablacar.fr/dashboard/profile/picture">
                            Ajouter votre photo
                        </a>
                    </span>

                        Bonjour <%= user.getFirstName() %>
                        <ul class="public-profil unstyled">
                            <li><a href="https://www.blablacar.fr/dashboard/profile/general">
                                → Modifier votre profil
                            </a></li>
                        </ul>
                    </h1>

                    <div class="experience-container pull-right">
                        <div class="clearfix">
                            <h2 class="pull-left">Votre niveau d'expérience</h2>
                            <a href="https://www.blablacar.fr/niveau-experience" class="blue pull-right">→ Comment devenir habitué&nbsp;?</a>
                        </div>
                        <ul class="breadcrumb-level lv1 unstyled">
                            <li class="step1 active"><span>Débutant</span></li>
                            <li class="step2"><span>Habitué</span></li>
                            <li class="step3"><span>Confirmé</span></li>
                            <li class="step4"><span>Expert</span></li>
                            <li class="step5"><span>Ambassadeur</span></li>
                        </ul>
                    </div>
                </div>

                <div class="row clearfix">

                    <div class="span4">
                        <div class="main-column clearfix" role="complementary">
                            <div class="main-column-block">
                                <h3 class="main-column-title">Préférences</h3>

                                <div class="clearfix"><span title="" oldtitle="Je suis parfois d'humeur bavarde." data-hasqtip="6" class="blabla prefs tip"><span class="u-visuallyHidden">Je suis parfois d'humeur bavarde.</span></span></div>

                                <a href="https://www.blablacar.fr/dashboard/profile/preferences" class="display-block margin-top margin-bottom blue">
                                    → Modifier vos préférences
                                </a>
                            </div>


                            <div class="main-column-block">
                                <h3 class="main-column-title">Activité</h3>

                                <ul class="main-column-list unstyled">


                                    <li>
                                        Date d'inscription : 08 juin 2016
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>

                    <div class="span8 dashboard-notifications-messages">
                        <%= user.getFirstName() %><br/>
                        <%= user.getLastName() %><br/>
                        <%= user.getAddress() %><br/>
                        <%= user.getCity() %><br/>
                        <%= user.getState() %><br/>
                        <%= user.getEmail() %><br/>

                    </div>
                </div>
            </section>
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
                                    <a rel="nofollow" href="https://www.fr.blablacar.be/" id="lang-fr_BE" class="js-optInExcluded">
                                        <span class="flag fr_be"></span> Belgique (Français)
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.nl.blablacar.be/" id="lang-nl_BE" class="js-optInExcluded">
                                        <span class="flag nl_be"></span> België (Vlaams)
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.com.br/" id="lang-pt_BR" class="js-optInExcluded">
                                        <span class="flag pt_br"></span> Brasil
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.cz/" id="lang-cs_CZ" class="js-optInExcluded">
                                        <span class="flag cs_cz"></span> Česká republika
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.de/" id="lang-de_DE" class="js-optInExcluded">
                                        <span class="flag de_de"></span> Deutschland
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.es/" id="lang-es_ES" class="js-optInExcluded">
                                        <span class="flag es_es"></span> España
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.fr/" id="lang-fr_FR" class="js-optInExcluded">
                                        <span class="flag fr_fr"></span> France
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.hr/" id="lang-hr_HR" class="js-optInExcluded">
                                        <span class="flag hr_hr"></span> Hrvatska
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.in/" id="lang-en_IN" class="js-optInExcluded">
                                        <span class="flag en_in"></span> India
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.it/" id="lang-it_IT" class="js-optInExcluded">
                                        <span class="flag it_it"></span> Italia
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.hu/" id="lang-hu_HU" class="js-optInExcluded">
                                        <span class="flag hu_hu"></span> Magyarország
                                    </a>
                                </li>
                            </ul>
                            <ul class="right-column">
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.mx/" id="lang-es_MX" class="js-optInExcluded">
                                        <span class="flag es_mx"></span> México
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.nl/" id="lang-nl_NL" class="js-optInExcluded">
                                        <span class="flag nl_nl"></span> Nederland
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.pl/" id="lang-pl_PL" class="js-optInExcluded">
                                        <span class="flag pl_pl"></span> Polska
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.pt/" id="lang-pt_PT" class="js-optInExcluded">
                                        <span class="flag pt_pt"></span> Portugal
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.ro/" id="lang-ro_RO" class="js-optInExcluded">
                                        <span class="flag ro_ro"></span> România
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.sk.blablacar.com/" id="lang-sk_SK" class="js-optInExcluded">
                                        <span class="flag sk_sk"></span> Slovensko
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.rs/" id="lang-sr_Latn_RS" class="js-optInExcluded">
                                        <span class="flag sr_latn_rs"></span> Srbija
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.com.tr/" id="lang-tr_TR" class="js-optInExcluded">
                                        <span class="flag tr_tr"></span> Türkiye
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.co.uk/" id="lang-en_GB" class="js-optInExcluded">
                                        <span class="flag en_gb"></span> United Kingdom
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.ru/" id="lang-ru_RU" class="js-optInExcluded">
                                        <span class="flag ru_ru"></span> Россия
                                    </a>
                                </li>
                                <li>
                                    <a rel="nofollow" href="https://www.blablacar.com.ua/" id="lang-uk_UA" class="js-optInExcluded">
                                        <span class="flag uk_ua"></span> Україна
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





</body>
</html>
