<?php
class panier{
    
    public function __construct(){
        if(!isset($_SESSION)){
            session_start();
        }
        if(!isset($_SESSION['panier'])){
           $_SESSION['panier'] = array();
        } 
    }

    public function add($f_id){
        $_SESSION['panier'][$f_id] = 1;
    }
    
}