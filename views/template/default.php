<!DOCTYPE html>
<html lang="fr">
	<?php require 'infos.php'; ?>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title><?php echo $title; ?></title>
		<meta content="width=device-width, initial-scale=1.0, user-scalable=yes" name="viewport">
		<meta name="description" content="L'hôtel du Relais Céline et Thierry vous accueillent à l'hôtel du relais. Dans une ambiance chaleureuse et conviviale, pour votre plus grand plaisir. Pour vos séjours détentes, touristiques ou vos déplacements professionnels, venez proiter du confort et du calme de nos chambres toutes personnalisées." >
		<meta name="keywords" content="hotel, hôtel, thouars, hotel du relais, hôtel du relais, 79100">
		<meta property="og:title" content="L'hôtel du Relais">
		<meta property="og:type" content="website">
		<meta property="og:url" content="index.php">
		<meta property="og:image" content="pics/Galerie/19.jpg">
		<meta property="og:site_name" content="L'hôtel du Relais">

		<script src="js/jquery.js"></script>

		<link href="css/global.css" rel="stylesheet" type="text/css">
		<link href="js/zoombox/zoombox.css" rel="stylesheet" type="text/css">

		<script src="js/global.js"></script>
		<script src="js/zoombox/zoombox.js"></script>
		<script src='js/datetimepickerfr.js'></script>

		<script>
			$(function() {
				$('a.zoombox').zoombox();
			});

			$(document).ready(function () {

				$.datepicker.setDefaults( $.datepicker.regional[ "fr" ] );

				if(window.location.hash.substr(1) != "")
				{
					var Ancre = window.location.hash.substr(0);
				    $('html, body').animate({
				        scrollTop: ($(Ancre).offset().top)
				    }, 'slow');
				}
			});

		</script>

	</head>

	<body>
		<div id="conteneur">

			<div id="index-header">
				 <img id="index-bandeau-img" src="<?php echo $url_bandeau; ?>" alt="<?php echo $alt_bandeau; ?>"> 
				 
				 <div id="header">


			

					<div id="header-menu-titre">

						<div id="header-menu-titre-principal" >
							<div id="header-menu-titre-principal-img" style="background-image: url(pics/bandeau_haut/fond_gris_titre.png)">
								<h1><?php echo $titre; ?><span><?php echo $sous_titre; ?></span></h1>
							</div>
			
						</div>

						<div id="header-menu-titre-secondaire">
							<label><a href="reservations" class="header-reserver">RÉSERVER</a></label>
						</div>

					</div>

					<div id="header-menu-tel">
						<div id="header-menu-tel-numero" style="background-image: url(pics/bandeau_haut/fond_gris_tel.png);">
							<div id="header-menu-tel-img"><img src="pics/bandeau_haut/tel.png" alt="téléphone"></div>
								<?php echo $tel; ?>
							</div>
						</div>

					</div>

				<div id="header-menu">
					<a href="index.php" class="header-tablecell">HÔTEL</a>
					<a href="chambres" class="header-tablecell">CHAMBRES</a>
					<a href="galerie" class="header-tablecell">GALERIE</a>
					<a href="tarifs" class="header-tablecell">TARIFS</a>
					<a href="tourisme" class="header-tablecell">TOURISME</a>
					<a href="infos_pratiques" class="header-tablecell">PRATIQUE</a>

			
				</div>

				<div id="header-menu-resp" onclick="MenuResp()">
	
					<label id="header-menu-resp-titre">MENU</label>
					<ul id="menuresp-ul">
						<li><a href="index.php" class="header-tablecell">HÔTEL</a></li>
						<li><a href="chambres" class="header-tablecell">CHAMBRES</a></li>
						<li><a href="galerie" class="header-tablecell">GALERIE</a></li>
						<li><a href="tarifs" class="header-tablecell">TARIFS</a></li>
						<li><a href="tourisme" class="header-tablecell">TOURISME</a></li>
						<li><a href="infos_pratiques" class="header-tablecell">PRATIQUE</a></li>

					</ul>


				</div>
				
				<div id="header-menu-degrade-2"></div>

				<div id="header-menu-degrade"></div>
			</div>
			
			<?php echo $contenu; ?>
				

			<div id="footer">
			<br>
				<div id="footer-table">

					<div class="footer-cell">
						<a href="mentions_legales">Mentions légales</a>
					</div>

				</div>
			<br>
			</div>

					

		
		</div>

		<script>

$('.header-tablecell').click(function(){
	var href = $(this).attr("href");
	Ancre = href.substring(href.indexOf("#"));
	$('html, body').animate({
		scrollTop:$(Ancre).offset().top
	}, 'slow');
});

</script>

	</body>

</html>
