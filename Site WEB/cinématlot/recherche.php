<?php
require_once 'config.php';
$films = $bdd->query('SELECT titre FROM film ORDER BY id DESC');
if (isset($_GET['recherche']) AND !empty($_GET['recherche'])){
    $recherche = htmlspecialchars($_GET['recherche']);
    $film = $bdd->query('SELECT titre FROM film WHERE titre LIKE "%'.$recherche.'%" ORDER BY id DESC '
    );
}
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
						<form  method="get">
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
						<li><a href="index.html">Accueil</a></li>
						<li><a href="articles.html" class="active">Films</a></li>
						<li><a href="contact-us.html">Contactez-nous</a></li>
                        <li><a href="about-us.html">A propos</a></li>
						<li class="last"><a href="index.php">Compte</a></li>
					</ul>
				</div>
				
			</div>
<!-- BODY -->
<br>
				<div class="content">
                    <br>
              
                            <br>
					<h3>Recherche des meilleurs <span>Films</span></h3>
                    <section class="afficher_utilisateur">
								<?php
									if($film->rowCount() > 0){
                                        while($a = $film->fetch()){
                                            ?>
                                            <h4 style='color:white'><?= $a['titre']; ?></h4>
                                            <?php
                                        }
									}else{
											?><br>
											<h1 style='color: white'>Aucun film trouvé</h1>
											<br>
											<?php
										}
									
								?>
							</section>
					<ul class="movies">
						<li href="jurassic.html" title="Jurassic Park">
							<h4>Jurassic Park</h4><img src="images/1page-img2.jpg" alt="" />
							<p>Check out Disney-Pixar's official Toy Story site, watch the <span>Toy Story 3</span> trailer, and meet new characters. Remember, no toy gets left behind!</p>
							<div class="wrapper"><a href="#" class="link2"><span><span>Read More</span></span></a></div>
						</li>

						<li class="clear">&nbsp;</li>
					</ul>
				</div>
			</div>
<!-- FOOTER -->
<br>
			<div id="footer">
				<div class="left">
					<div class="right">
						<div class="inside">Copyright - Type in your name here<br />
							Website template designed by <a class="new_window" href="http://store.templatemonster.com/?aff=netsib1" target="_blank" rel="nofollow">www.templatemonster.com</a><br />
							3D Models provided by <a class="new_window" href="http://www.templates.com/product/3d-models/" target="_blank" rel="nofollow">www.templates.com</a> 
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

 


 