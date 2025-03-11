<?php
include("template_zaglavlje_administracijsko.html");
include("pdo.php");
include("session_admin.php"); // Dodaj ovdje kako bi zaštitila stranicu - samo za administratore

/*---------------------------------------
   DOHVAĆANJE PODATAKA IZ BAZE I UPITI
----------------------------------------*/

if(isset($_POST["submit"])){ //provjera je li forma poslana i preuzimanje podataka iz forme putem  post metode i html name atributa
    $id = intval($_POST['id']);//pretvaranje idja u broj iz sigurnosnih razloga
    $naslov = $_POST["naslov"];
    $zanr = $_POST["zanr"];
    $redatelj = $_POST["redatelj"];
    $metraza = $_POST["metraza"];
    $godina_izdanja = $_POST["godina_izdanja"];
    $glumci = $_POST["glumci"];
    $radnja = $_POST["radnja"];
    
 // Provjera je li checkbox označen (ako nije, dodjeljuje se 0)
 $objavljeno = isset($_POST["objavljeno"]) ? 1 : 0;


    if($id>0){ 
        //ako je id veći od 0 radi se o postojećem postu - ažuriranje postojećih podataka
        $db->query("
        UPDATE filmovi SET
            objavljeno = '$objavljeno',
            naslov = '$naslov',
            zanr = '$zanr',
            redatelj = '$redatelj',
            metraza = '$metraza',
            godina_izdanja = '$godina_izdanja',
            glumci = '$glumci',
            radnja = '$radnja'
        WHERE id = '$id'
        ");


} else {
    //unos novih podataka u bazu
    $db -> query(
        "INSERT INTO filmovi (objavljeno, naslov, zanr, redatelj, metraza, godina_izdanja, glumci, radnja ) VALUES ('$objavljeno', '$naslov', '$zanr', '$redatelj', '$metraza','$godina_izdanja','$glumci','$radnja')"
    );

    }
    //preusmjeravanje na administracijsku stranicu
    header("Location: filmovi_admin.php");
    exit;

}

/*--------------------------------
AŽURIRANJE POSTA I DODAVANJE NOVOG
---------------------------------*/

//dohvat podataka za uređivanje - ako je ID poslan putem GET varijable dohvacaju se podaci tog posta iz baze i spremaju u varijable
if(isset($_GET["id"])){
    $id = intval($_GET["id"]);
    $upit = $db->query("SELECT * FROM filmovi WHERE id = $id");
    $rezultat = $upit->fetch();

    //popunjavanje forme postojećim podacima iz baze
    $objavljeno = $rezultat["objavljeno"];
    $naslov = $rezultat["naslov"];
    $zanr = $rezultat["zanr"];
    $metraza = $rezultat["metraza"];
    $redatelj = $rezultat["redatelj"];
    $godina_izdanja = $rezultat["godina_izdanja"];
    $glumci = $rezultat["glumci"];
    $radnja = $rezultat["radnja"];

} else {
    //ako nema ida, prikazuje se prazna forma za unos podataka - varijable ostaju prazne kako bi se mogle popuniti novim unosima

    $id = "";
    $objavljeno = 0;
    $naslov = "";
    $zanr = "";
    $redatelj = "";
    $metraza = "";
    $godina_izdanja = "";
    $glumci = "";
    $radnja = "";
}

?> 

<!--HTML FORMA ZA UNOS TEKSTA-->
<div class="row">
<div class="medium-12 large-12 columns">
<form method="post" action="">

<!--Ovo je skriveno polje za ID u HTML formi koje omogućuje ažuriranje - potrebno je poslati ID putem forme - on čuva ID u formi!!-->
<!--Ovo omogućuje razlikovanje između ažuriranja i dodavanja novog posta. Ako postoji ID, ažurira se; ako ne, dodaje se novi unos.-->
<!--Ako id filma postoji u bazi hidden input osigurava da znamo koji film treba ayurirati, a ako ne postoji u bazi onda se kreira novi film u bazi i dobije automatski ID iz baze (auto_increment)-->
<input type="hidden" name="id" value="<?php echo $id; ?>">


<label>Naslov filma:</label>
    <input type="text" name="naslov" value="<?php echo $naslov; ?>"><br>

        <!-- Checkbox za objavu filma -->
<label>
    <input type="checkbox" name="objavljeno" value="1" <?php if($objavljeno == 1) echo "checked"; ?>> Objavljeno
<br>

<label>Žanr filma:</label>
    <input type="text" name="zanr" value="<?php echo $zanr; ?>">
<br>

<label>Redatelj:</label>
    <input type="text" name="redatelj" value="<?php echo $redatelj; ?>">
<br>

<label>Metraža filma (min):</label>
    <input type="text" name="metraza" value="<?php echo $metraza; ?>">
<br>

<label>Godina izdanja:</label>
    <select name="godina_izdanja">
        <?php
        for($i = 2025; $i >= 1895; $i--){ //petlja
            //html option tag za padajuci izbornik godine izdanja filma od 2025 do 1895
            echo "<option value='$i' " . ($godina_izdanja == $i ? "selected" : "") . ">$i</option>";//ako je godina iz baze jednaka trenutnoj godini $i onda ju selecta iz izornika (ako admin ureduje film), a ako nije onda godina i $i nisu isti i vraca "" odnosno ne dodaje nista (admin dodaje novi film i rucno godinu)
        } 
        ?>
    </select>

    <br>

<label>Glavni glumci:</label>
    <input type="text" name="glumci" value="<?php echo $glumci; ?>">
<br>

<label>Radnja filma:
    <textarea name="radnja" rows="10"><?php echo $radnja; ?></textarea>
<br>



<input type="submit" name="submit" value="Podnesi" class="button">
</form>

<?php
include("template_podnozje.html");
?>