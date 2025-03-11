<?php
//skripta koja dodaje favorite korisnika u bazu, nju korisnik ne vidi na stranici već ona samo obrađuje zahtjev kada korisnik klikne gumb dodaj u favorite, provjerava je li korisnik prijavljen te upisuje podatke u tablicu favoriti 

//skripta uzima id korisnika iz sesije i id filma iz forme te ih sprema u tablicu favoriti 
include("pdo.php");
session_start();
// Provjera je li korisnik prijavljen
if(isset($_SESSION["ulogiran_korisnik"]) && $_SESSION["ulogiran_korisnik"] == "da") {

    if(isset($_POST['dodaj_favorit']))/*ako je kliknut gumb dodaj u favorite*/ {
        $film_id = $_POST['film_id']; // dohvaćamo ID filma 
        $korisnik_id = $_SESSION['korisnik_id']; // dohvaćamo ID korisnika iz sesije
       // SQL upit za dodavanje filma u favorite
        $db->query("INSERT INTO favoriti (korisnik_id, film_id) VALUES ('$korisnik_id', '$film_id')");

        header("Location: favoriti.php");
    }

} else {
    // Ako korisnik nije prijavljen, preusmjeri ga na login
    header("Location: login_korisnik.php");
    exit;
}

?>