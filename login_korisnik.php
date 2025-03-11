<?php
include("template_zaglavlje_korisnicko.html");
include ("pdo.php");
session_start();//pokretanje sesije kako bismo mogli koristiti $_SESSION varijable za prijavu 

if(isset($_POST["submit"])){//provjera je li poslana forma
    $korisnicko_ime = $_POST["k_korisnicko_ime"]; //korsnicko ime koje je korisnik unio
    $lozinka = ($_POST["k_lozinka"]);// lozinka koja je unesena 

$upit = $db->query("SELECT * FROM korisnici WHERE k_korisnicko_ime = '$korisnicko_ime'");
$rezultat = $upit->fetch(PDO::FETCH_ASSOC);//koristimo umjesto fetchall jer dohvacamo samo 1 rezultat


//provjera je li korisnik pronađen - ako nije onda ispisuje echo pod else
if ($rezultat && $lozinka == $rezultat["k_lozinka"]){
    //ulogiraj korisnika
        $_SESSION["ulogiran_korisnik"] = "da";
        $_SESSION["korisnik_ime"] = $rezultat["ime"]; // Sprema ime korisnika u sesiju kako bi se ime prikazalo prilikom logiranja
        $_SESSION["korisnik_id"] = $rezultat["id"]; // Sprema korisnikov ID u sesiju kako bi smo znali koji je korisnik dodao koji film u favorite
        header("Location: filmovi_korisnik.php");
        exit;//sprijecava daljnje izvrsavanje koda nakon preusmjeravanja
    } else {
        echo "<p style='color:red;'>Pogrešno korisničko ime/lozinka!</p>";//sigurnost
    }

}  




?>
 
<div class="row">
<div class="medium-12 large-12 columns">
<!--kada se klikne Prijava podaci se salju putem post metode-->
<h4>Prijava</h4>
<form method="post" action="">
Korisničko ime: <input type="text" name="k_korisnicko_ime" value=""><br>
Lozinka: <input type="password" name="k_lozinka" value=""> <br>
<input type="submit" name="submit" value="Prijava" class="button">

</form>
<?php
include("template_podnozje.html");
?> 