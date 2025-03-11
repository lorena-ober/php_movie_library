<?php
include("template_zaglavlje_administracijsko.html");
include("pdo.php");
include("session_admin.php");

$upit = $db->query("SELECT * FROM filmovi ORDER BY godina_izdanja DESC");
$rezultat = $upit->fetchAll();

if(count($rezultat)>0){//provjera postoji li barem jedan film
    //link za dodavanje novog filma koji vodi na film_forma.php
    echo "<div class='row medium-10 large-8 columns'>";
    echo "<h3>Dostupni filmovi:</h3>";
    echo "<a href='film_forma.php'>Novi film</a>";
    echo "</div>";
    echo "<br>";
    echo "<div class='row medium-10 large-8 columns'>";
    echo "<table width='100%' border='1'>";

    //ispis rezultata u obliku tablice
    foreach($rezultat as $film){
        echo "<tr>";
        echo "<td>" . $film['naslov'] . "</td>";
        echo "<td>";//prikazuje linkove uredi i pobrisi u celiji
        echo "<a href='film_forma.php?id=" . $film['id'] . "'>Uredi</a> | ";//link za uređivanje
        echo "<a href='brisanje.php?id=" . $film['id'] . "'>Pobriši</a>";//link za brisanje
        echo "</td>";
        echo "</tr>";
        //tako za svaki film dok petlja ne prode kroz sve filmove iz baze iteriranjem

    }
    echo "</table>"; //kraj tablice
echo "</div>";
} else {
    echo "<p>Nema podataka za prikaz.</p>"; //ako ne postoje filmovi
}


?>

<?php
include("template_podnozje.html");
?>
