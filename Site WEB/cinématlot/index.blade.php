<?php

require '_index.blade.php';


?>


<!DOCTYPE html>
<head>
<title>Accueil | Cinématlot.com - Un océan de nouveautés</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Site de cinéma pour la SAE Informatique" />
<meta name="keywords" content="Mots-clés au cas ou" />
<meta name="author" content="ARVIN-BÉROD Maxence - HUBERT Quentin" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" />



</head>

<link rel="icon" type="image/x-icon" href="images/favicon.ico">
<body id="page1">
<div class="tail-top">
	<div class="tail-bottom">
		<div id="main">
<!-- HEADER -->
			<div id="header">
				<div class="row-1">
					<div class="fleft"><a href="index.html"><img src="images/logo2.png" alt="" /></a></div>
					<ul>
						<li><a href="index.html"><img src="images/icon1-act.png" alt="" /></a></li>
						<li><a href="contact-us.html"><img src="images/icon2.png" alt="" /></a></li>
						<li><a href="index.php"><img src="images/icon3.png" alt="" width="32" height="32" /></a></li>
						<form action="recherche.php" method="get">
							<div class="search-box">
								
								<input type="search" name="recherche" class="search-txt" placeholder="Cherchons un film !" />
								<a class="search-btn" href="#">
								<input type="submit" name="envoyer" i class="fa fa-search" aria-hidden="true"></i> >
								</a>
							</div>
						
						</form>
					</ul>
				</div>
				<div class="row-2">
					<ul>
						<li><a href="index.html" class="active">Accueil</a></li>
						<li><a href="about-us.html">About</a></li>
						<li><a href="articles.html">Articles</a></li>
						<li><a href="contact-us.html">Contacts</a></li>
						<li class="last"><a href="index.php">Compte</a></li>
					</ul>
				</div>
				
			</div>
<!-- BODY -->
			<div id="content">
				<div id="slogan">
					<div class="image png"></div>
					<div class="inside">
						<h2>Nous franchissons<span>All Limitations</span></h2>
						<p>Lorem ipsum dolor consectetur adipisicing elit, sed do eiusmod tempor incididunt labore etolore magna aliqua enim minim veniam quis nostrud exercitation ullamco laboris.</p>
					</div>
				</div>
				<div class="box">
					<div class="border-right">
						<div class="border-left">
							<div class="inner">
								<h3>Welcome to <b>Cinema</b> <span>World</span></h3>
								<p>Cinema World Site is a free web template created by TemplateMonster.com team. This website template is optimized for 1024X768 screen resolution. It is also XHTML &amp; CSS valid.</p>
								<div class="img-box1"><img src="images/1page-img1.jpg" alt="" />This website template can be delivered in two packages - with PSD source files included and without them. If you need PSD source files, please go to the template download page at TemplateMonster to leave the e-mail address that you want the template ZIP package to be delivered to.</div>
								<p>This website template has several pages: <a href="index.html">Home</a>, <a href="about-us.html">About us</a>, <a href="articles.html">Articles</a> (with Article page), <a href="contact-us.html">Contact us</a> (note that contact us form – doesn’t work), <a href="sitemap.html">Site Map</a>.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="content">
					
					<h3>Nouveaux <span>Films</span></h3>
					
					<div class="row no-gutters">
						<?php //partie requete
							 // On inclu la connexion à la bdd

							$film = $DB->query('SELECT * FROM film'); 
							
						?>
						<?php foreach($film as $f) : ?>
							<div class="col-6">
								<div class="card m-2" style="width: 18rem;">
										<img src="images/films/<?= $f->image; ?>" class="card-img-top" alt="...">
										<div class="card-body">
											<h5 class="card-title"><?= $f->Titre ?></h5>
											<p style="color:red" class="card-title"><?= $f->Genre ?></p>
											<p class="card-text"><?= $f->description ?></p>
											<p style="color:red" class="card-title">Prix : <?= $f->prix ?>€</p>
											
											<a class="btn btn-primary" href="addpanier.php?id=<?= $f->id ?>">Ajouter au panier</a>
											
										</div>
								</div>
							</div>
						<?php endforeach; ?>
					</div>
				</div>
			</div>
<!-- FOOTER -->
			<div id="footer">
				<div class="left">
					<div class="right">
						<div class="inside">Copyright - ARVIN-BÉROD<br />
						
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript"> Cufon.now(); </script>
</form>
</body>
</html>