<?php
session_start();
session_unset();
session_destroy();
header("Location: index.php"); // Preusmjeravanje na početnu stranicu
exit;

//Ova jedna logout skripta će raditi za sve korisnike, jer uništava cijelu sesiju bez obzira na to je li korisnik administrator ili obični korisnik
?>