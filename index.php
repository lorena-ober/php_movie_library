<?php
include("template_zaglavlje_javno.html");
include ("pdo.php");

$upit = $db->query("SELECT id, naslov FROM filmovi WHERE objavljeno = 1 ORDER BY godina_izdanja DESC");
$rezultat = $upit->fetchAll();


if(count($rezultat)>0){
    echo "<div class='row medium-10 large-8 columns'>";
    echo "<h3>🎥 Filmovi:</h3>";

    foreach($rezultat as $film){
        echo "<a href='film_javno.php?id=" . $film["id"] . "'>" . $film['naslov'] . "</a>";
        echo "<br>";
    } 
    echo "</div>";

    } else {
        echo "<p>Nema podataka za prikaz</p>";
}

include("template_podnozje.html");
?>

