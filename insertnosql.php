<?php
session_start();
$conn= new PDO('mysql:host=localhost;dbname=blok1-am1a', "root", "");
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$seshid = $_SESSION['id'];
$query4 = $conn->query("SELECT postcode FROM klanten where id = '$seshid'");
$postcode = $query4->fetchColumn();
$query5 = $conn->query("SELECT straathuisnummer FROM klanten where id = '$seshid'");
$straathuisnummer = $query5->fetchColumn();
$query6 = $conn->query("SELECT woonplaats FROM klanten where id = '$seshid'");
$woonplaats = $query6->fetchColumn();
$query7 = $conn->query("SELECT betaalwijze FROM klanten where id = '$seshid'");
$betaalwijze = $query7->fetchColumn();


$name = $_POST['username'];
$an = $_POST['anaam'];
$bd = $_POST['bdatum'];
$bt = $_POST['btijd'];
$productnaam = $_POST['fnaam'];
$productcode = $_POST['pcode'];
$price = $_POST['prijs'];
$usercomments = $_POST['usercomments'];
$createddate = date('Y-m-d H:i:s');


date_default_timezone_set('Europe/Amsterdam');



$manager = new MongoDB\Driver\Manager('mongodb://127.0.0.1:27017');

$json = array([
    "id",
    23,
    "klant",
    [
      "klantid" => $seshid,
      "naam" => $name,
      "achternaam" => $an,
      "postcode" => $postcode,
      "straathuisnummer" => $straathuisnummer,
      "woonplaats" => $woonplaats,
      "betaalwijze" => $betaalwijze
    ],
    "createdAt",
    $createddate,
    "bezorgdatum",
    $bd,
    "bezorgtijd",
    $bt,
    "productnaam",
    $productnaam,
    "productcode",
    $productcode,
    "price",
    $price,
    "usercomments",
    $usercomments
  ]);


$bulk = new MongoDB\Driver\BulkWrite;
$bulk->insert([$json]);
//$bulk->insert(['test' => 2]);
//$bulk->insert(['laatstetest' => 3]);
$manager->executeBulkWrite('bonsai.orders', $bulk);
?>


