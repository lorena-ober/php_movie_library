<?php
include("template_zaglavlje_administracijsko.html");
include ("pdo.php");
session_start(); //pokretanje sesije kako bismo mogli koristiti $_SESSION varijable za prijavu 

if(isset($_POST["submit"])){//provjera je li poslana forma
    $korisnicko_ime = $_POST["a_korisnicko_ime"]; //korsnicko ime koje je korisnik unio
    $lozinka = ($_POST["a_lozinka"]); // lozinka koja je unesena 

$upit = $db->query("SELECT * FROM administratori WHERE a_korisnicko_ime = '$korisnicko_ime'");
$rezultat = $upit->fetch(PDO::FETCH_ASSOC); //koristimo umjesto fetchall jer nam treba samo 1 rezultat

//provjera je li korisnik pronađen - ako nije onda ispisuje echo pod else
if ($rezultat && $lozinka == $rezultat["a_lozinka"]){
    // Ulogiraj administratora - ako su ime i lozinka tocni
    $_SESSION["ulogiran_admin"] = "da";
    header("Location: filmovi_admin.php"); //preusmjeri ga
    exit;//sprijecava daljnje izvrsavanje koda nakon preusmjeravanja
} else {
    echo "<p style='color:red;'>Pogrešno korisničko ime/lozinka!</p>";
    }
}  

?>
 
<div class="row">
<div class="medium-12 large-12 columns">
<!--kada se klikne Prijava podaci se salju putem post metode-->
<h4>Prijava</h4>
<form method="post" action="">
Korisničko ime: <input type="text" name="a_korisnicko_ime" value=""><br>
Lozinka: <input type="password" name="a_lozinka" value=""> <br>
<input type="submit" name="submit" value="Prijava" class="button">

</form>
<?php
include("template_podnozje.html");
?> 