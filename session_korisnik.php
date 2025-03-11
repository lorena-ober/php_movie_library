<?php
/*Ova datoteka služi za provjeru je li korisnik prijavljen (ulogiran). Koristi se kako bi se ograničio pristup korisnickim stranicama samo prijavljenim korisnicima.
*/

session_start();//pokretanje sesije - način pohrane podataka na serveru tijekom rajanja korisničke sesije

if(isset($_SESSION["ulogiran_korisnik"]) && $_SESSION["ulogiran_korisnik"] == "da"){
    //sve je ok, korisnik može pristupiti stranici
    //ako postoji kljuc ulogiran s vrijednoscu onda korisnik moze pristupiti stranici
}else{
    header("Location:login_korisnik.php");//ako nije ulogiran, korisnika se preusmjerava na login_korisnik.php gdje se može prijaviti
}
/*
Ova datoteka (session_korisnik.php) se uključuje na početku svake korisnicke stranice.
Ako je korisnik prijavljen (ulogiran == "da"), nastavlja se izvršavati stranica.
Ako nije prijavljen, korisnik se preusmjerava na login_korisnik.php.
 */
?>