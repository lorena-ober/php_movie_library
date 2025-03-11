<?php
include("pdo.php");
include("session_korisnik.php"); // Korisnik mora biti prijavljen

if(isset($_POST["ukloni_favorit"])) {//ako je kliknuto na gumb name = "ukloni_favorit"
    $film_id = intval($_POST["film_id"]);//dohvacamo id favoriziranog filma - pomaze nam da znamo koji favorit trebamo obrisati
    $korisnik_id = $_SESSION["korisnik_id"];//dohvacamo id korisnika spremljen u session varijabli - id nam pomaze da znamo ciji favorit treba izrisati

    //jednostavan upit za brisanje iz baze tj tablice favoriti kod odredenog korisnika
    $db->query("DELETE FROM favoriti WHERE korisnik_id = $korisnik_id AND film_id = $film_id");

    // Preusmjeravanje natrag na favorite
    header("Location: favoriti.php");
    exit;
}
?>
