<?php
include("template_zaglavlje_korisnicko.html");
include("pdo.php");
include("session_korisnik.php"); // Dodaj ovdje kako bi zaštitila stranicu

if(isset($_GET['id'])){
    $id = intval($_GET['id']);
}else{
    // Ako nema GET varijable, preusmjeri na index.php
    header("Location: filmovi_korisnik.php") ;
    exit;
}

$upit = $db->query("SELECT * FROM filmovi WHERE id = $id");
$rezultat = $upit->fetch();//dohvacamo redak po redak

if($rezultat){
    echo "<div class='medium-12 large-12 columns'>";
    //naslov
    echo "<h3>" . $rezultat["naslov"] . "</h3>";
    //zanr
    echo "<p><strong>Žanr:</strong> " . $rezultat["zanr"] . "</p>";
    //redatelj
    echo "<p><strong>Redatelj:</strong> " . $rezultat["redatelj"] . "</p>";
    //metraza
    echo "<p><strong>Metraža:</strong> " . $rezultat["metraza"] . " min</p>";
    //godina izdanja
    echo "<p><strong>Godina izdanja:</strong> " . $rezultat["godina_izdanja"] . "</p>";
    //glavni glumci
    echo "<p><strong>Glavni glumci:</strong> " . $rezultat["glumci"] . "</p>";
    //radnja
    echo "<p><strong>Radnja:</strong> " . nl2br($rezultat["radnja"]) . "</p>";
    echo "</div>";
    echo "<a href='filmovi_korisnik.php'>&lt;&lt;Povratak na početnu stranicu</a>";
} else {
    echo "Nema podataka za prikaz.";
    echo "<a href='filmovi_korisnik.php'>&lt;&lt;Povratak na početnu stranicu</a>";
}

// Prikaz gumba "Dodaj u favorite"
echo "<form method='post' action='dodaj_favorit.php'>";
//skriveno polje koje pohranjuje ID filma, prosljeđujemo ID filma iz baze pomoću $rezultat["id"]
echo "<input type='hidden' name='film_id' value='" . $rezultat["id"] . "'>";
echo "<br>";
//gumb
echo "<input type='submit' name='dodaj_favorit' value='Dodaj u favorite' class='button'>";
echo "</form>";

?>


<?php
include("template_podnozje.html");
?>