<?php
include_once("view_cart.php");


foreach($_SESSION['cart_products'] as $value){

    $allproductnames[] = $value['product_name'];
    $allproductcodes[] = $value['product_code'];

}
$conn= new PDO('mysql:host=localhost;dbname=blok1-am1a', "root", "");
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$seshid = $_SESSION['id'];


$query2 = $conn->query("SELECT firstname FROM users where id = '$seshid'");


$result = $query2->fetchColumn();


$query3 = $conn->query("SELECT lastname FROM users where id = '$seshid'");


$results = $query3->fetchColumn();

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
                <form action="index.php?content=finalizenosqlorder" method="post">

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