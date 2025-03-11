<?php
//BRISANJE FILMA IZ BAZE
include("template_zaglavlje_administracijsko.html");
include("pdo.php");
include("session_admin.php");

if(isset($_GET["id"])){// Provjera postoji li ID u GET varijabli
    $id = intval($_GET["id"]);// Pretvaranje ID-ja u broj (sigurnosna mjera)
    // Brisanje filma iz baze pomoću DELETE upita
    $db -> query("DELETE FROM filmovi WHERE id = $id");

    // Preusmjeravanje natrag na administracijsku stranicu
    header("Location: filmovi_admin.php");
    exit;

} else {
    // Ako ID nije poslan, također preusmjeriti na filmovi_admin.php
    header("Location: filmovi_admin.php");
}



include("template_podnozje.html");
?>