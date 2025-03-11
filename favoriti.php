<?php
include ("pdo.php");
include ("template_zaglavlje_korisnicko.html");
include ("session_korisnik.php"); // Osiguravamo da korisnik mora biti prijavljen

// Dohvaćamo korisnikov ID iz sesije kako bismo izlistali njegove favorite
$korisnik_id = $_SESSION["korisnik_id"];

//upit koji iz baze dohvaca favorite korisnika pomocu JOIN-a
$upit=$db->query("SELECT filmovi.id, filmovi.naslov FROM favoriti JOIN filmovi ON favoriti.film_id = filmovi.id WHERE favoriti.korisnik_id = $korisnik_id ORDER BY filmovi.naslov ASC");

$rezultat = $upit->fetchAll();

// Ispisujemo favorite korisnika
echo "<h2>♥️ Moji favoriti:</h2>";

if(count($rezultat)>0){//provjeravamo je li korisnik dodao neke favorite
    echo "<ul>";//html lista
    foreach($rezultat as $favorizirani_film){//iteriranje rezultata i spremanje u varijablu favorizirani film
        //ispis rezultata kroz listu
        echo "<li><a href='film_korisnik.php?id=" . $favorizirani_film["id"] . "'>" //link koji vodi na stranicu s detaljima filma pri cemu se salje id filma kroz get metodu
         .$favorizirani_film["naslov"] . "</a>

        <form method='post' action='ukloni_favorit.php' style='display:inline;'>
            <input type='hidden' name='film_id' value='" . $favorizirani_film["id"] . "'>
            <input type='submit' name='ukloni_favorit' value='Ukloni iz favorita'>
        </form>
        </li>
        <br>";
        //gore - link za uklanjanje favorita

    }
    echo "</ul>";
    echo "<a href='filmovi_korisnik.php'>&lt;&lt;Povratak na početnu stranicu</a>";

} else {
    echo "<p>Još uvijek nemaš omiljenih filmova.</p>";
    echo "<a href='filmovi_korisnik.php'>&lt;&lt;Povratak na početnu stranicu</a>";
}



include("template_podnozje.html");
?>