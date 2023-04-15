<?php

require '_index.blade.php';


if(isset($_GET['id'])){
    $f = $DB->query('SELECT id FROM film WHERE id=:id', array('id' => $_GET['id']));
   if(empty($f)){
    die("Ce film n'existe pas");
   }
   
   $panier->add($f[0]->id);
   die('Le film a bien été ajouté à votre panier <a href="javascript:history.back()">revenir en arrière moussaillon !</a>');
}
else{
    die("Vous n'avez rien ajouté au panier matelot !");
}


?>