<?php

$manager = new MongoDB\Driver\Manager('mongodb://127.0.0.1:27017');

$json = array([
    "id",
    23,
    "klant",
    [
      "klantid" => 147,
      "naam" => "faaraz",
      "achternaam" => "rasolzadeh",
      "postcode" => "3962KN",
      "straathuisnummer" => "Virgilius 20",
      "woonplaats" => "Wijk bij Duurstede",
      "betaalwijze" => "paypal"
    ],
    "createdAt",
    "2017-06-13 12:56:37",
    "bezorgdatum",
    "2-08-2017",
    "bezorgtijd",
    "15:00",
    "productnaam",
    "Ulmus Chinensis, Azalea, Ligustrum Chinensis",
    "productcode",
    "PD1014, PD1006",
    "price",
    "46.50",
    "usercomments",
    "dititwork"
  ]);


$bulk = new MongoDB\Driver\BulkWrite;
$bulk->insert([$json]);
//$bulk->insert(['test' => 2]);
//$bulk->insert(['laatstetest' => 3]);
$manager->executeBulkWrite('bonsai.orders', $bulk);

//$filter = ['x' => ['$gt' => 1]];
//$options = [
//    'projection' => ['_id' => 0],
//    'sort' => ['x' => -1],
//];

//$query = new MongoDB\Driver\Query($filter, $options);
//$cursor = $manager->executeQuery('orders.orders', $query);

//foreach ($cursor as $document) {
//    var_dump($document);
//}
?>

<head>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
    </script>

</head>
<div class="column middle">
    <!-- indexer: on -->
    <div class="richText" id="elementscontainer">
        <p>
            Vul hier uw gegevens in!
            <!DOCTYPE html>

            <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <link href="style/style1.css" rel="stylesheet" type="text/css" />
            </head>
            <body>
                <style>
                         form {
                             margin: 0 auto;
                             text-align:center;
                         }
                </style>
                <form action="index.php?content=finalizeorder" method="post">

                    <br />Voornaam:
                    <br />
                    <input type="text" name="username" value="<?php echo $result;  ?>" style="background-color:white; width:20%;" />

                    <br />Achternaam:
                    <br />
                    <input type="text" name="anaam" value="<?php echo $results;   ?>" style="background-color:white; width:20%;" />

                    <br />Bezorgdatum:
                    <br />
                    <input type="date" id="datepicker" name="bdatum" style="background-color:white; width:20%;" />

                    <br />Bezorgtijd:
                    <br />
                    <input type="time" name="btijd" min="09:00" style="background-color:white; width:20%;" />

                    <br />Product naam:
                    <br />
                    <input type="text" name="fnaam" value="<?php echo implode(', ',$allproductnames); ?>" style="background-color:white; width:20%;" />

                    <br />Product code:
                    <br />
                    <input type="text" name="pcode" value="<?php echo implode(', ',$allproductcodes); ?>" style="background-color:white; width:20%;" />

                    <br />Prijs:
                    <br />
                    <input type="text" name="prijs" value="<?php echo htmlspecialchars($grand_total); ?>" style="background-color:white; width:20%;" />
                    <br />
                    <br />

                    Heeft u nog opmerkingen over uw bestelling:
                    <br />
                    <textarea rows="4" cols="50" name="usercomments"></textarea>
                    <br />


                    <input type="submit" value="Bestellen" />
                </form>
    </div>
</div>