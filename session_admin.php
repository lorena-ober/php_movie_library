<?php
/*Ova datoteka služi za provjeru je li korisnik prijavljen (ulogiran). Koristi se kako bi se ograničio pristup administracijskim stranicama samo prijavljenim korisnicima (administratorima).
*/
session_start();//pokretanje sesije - način pohrane podataka na serveru tijekom rajanja korisničke sesije
if(isset($_SESSION["ulogiran_admin"]) && $_SESSION["ulogiran_admin"] == "da"){
    //sve je ok, korisnik može pristupiti stranici
    //ako postoji kljuc ulogiran s vrijednoscu onda korisnik moze pristupiti stranici
}else{
    header("Location:login_admin.php"); //ako nije ulogiran, korisnika se preusmjerava na login_admin.php gdje se može prijaviti
}

/*
Ako je korisnik prijavljen (ulogiran == "da"), nastavlja se izvršavati stranica.
Ako nije prijavljen, korisnik se preusmjerava na login.php.
 */
?>