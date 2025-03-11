<?php
include("template_zaglavlje_korisnicko.html");
include("pdo.php");
include("session_korisnik.php"); 

// Prikaz imena korisnika ako je prijavljen
if(isset($_SESSION["korisnik_ime"])){
    echo "<h1>Dobrodošao, " . $_SESSION["korisnik_ime"] . "😄!</h1>";
} else {
    echo "<h1>Dobrodošao korisniče!</h1>";
}

echo "<hr>";

//upit za objavljene filmove
$upit_objavljeni = $db->query("SELECT id, naslov FROM filmovi WHERE objavljeno = 1 ORDER BY godina_izdanja DESC");
$rezultat_objavljeni = $upit_objavljeni->fetchAll();

if(count($rezultat_objavljeni)>0){
    echo "<div class='row medium-10 large-8 columns'>";
    echo "<h3>🎥 Filmovi:</h3>";

    foreach($rezultat_objavljeni as $film_objavljeni){
        echo "<a href='film_korisnik.php?id=" . $film_objavljeni["id"] . "'>" . $film_objavljeni['naslov'] . "</a>";
        echo "<br>";

    } 
    
    echo "</div>";

} else {
    echo "<p>Nema podataka za prikaz</p>";
}

echo "<br>";

//upit za neobjavljene filmove
$upit_neobjavljeni = $db->query("SELECT id, naslov, godina_izdanja FROM filmovi WHERE objavljeno = 0 ORDER BY godina_izdanja DESC");
$rezultat_neobjavljeni = $upit_neobjavljeni->fetchAll();

if(count($rezultat_neobjavljeni)>0){
    echo "<div class='row medium-10 large-8 columns'>";
    echo "<h3>🎬 Uskoro u ponudi:</h3>";

    foreach($rezultat_neobjavljeni as $film_neobjavljeni){
        echo $film_neobjavljeni['naslov'] . " - " . $film_neobjavljeni['godina_izdanja'] . "." . " (uskoro dostupno)";
        echo "<br>";

    } 
    
    echo "</div>";

} else {
    echo "<p>Nema podataka za prikaz</p>";
}

include("template_podnozje.html");

?>