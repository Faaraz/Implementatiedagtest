<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        /* Remove the navbar's default rounded borders and increase the bottom margin */
        .navbar {
            margin-bottom: 50px;
            border-radius: 0;
        }

        /* Remove the jumbotron's default bottom margin */
        .jumbotron {
            margin-bottom: 0px;
        }

        /* Add a gray background color and some padding to the footer */
        footer {
            background-color: #f2f2f2;
            padding: 25px;
        }
    </style>
</head>
<body>

    <div class="jumbotron">
        <div class="container text-center">
            <h1>Bonsai Shop Online</h1>
            <p>Snel en gemakkelijk</p>
        </div>
    </div>

    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Logo</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li><a href="http://localhost/2014-2015/InlogRegistratieSysteem/Les%201/index.php?content=algemenehomepage">Home</a></li>
                    <li><a href="http://localhost/2014-2015/InlogRegistratieSysteem/Les%201/index.php?content=videoverhuur">Producten</a></li>
                    <li><a href="http://localhost/2014-2015/InlogRegistratieSysteem/Les 1/contact.html">Contact</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="index.php?content=customerHomepage"><span class="glyphicon glyphicon-user"></span>Your Account</a></li>
                    <li><a href="http://localhost/2014-2015/InlogRegistratieSysteem/Les%201/index.php?content=view_cart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>

                </ul>
            </div>
        </div>
    </nav>
    <div class="column middle">
        <!-- indexer: on -->
        <h1 class="title">Make a complaint</h1>
        <div class="richText" id="elementscontainer">
            <style>
                .myForm {
                    font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
                    font-size: 0.8em;
                    width: 30em;
                    padding: 1em;
                }

                    .myForm * {
                        box-sizing: border-box;
                    }

                    .myForm label {
                        padding: 0;
                        font-weight: bold;
                        text-align: right;
                        display: block;
                    }

                    .myForm input,
                    .myForm select,
                    .myForm textarea {
                        margin-left: 2em;
                        float: right;
                        width: 20em;
                        border: 1px solid #ccc;
                        font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
                        font-size: 0.9em;
                        padding: 0.3em;
                    }

                    .myForm textarea {
                        height: 100px;
                    }

                    .myForm button {
                        padding: 1em;
                        border-radius: 0.5em;
                        background: #eee;
                        border: none;
                        font-weight: bold;
                        margin-left: 14em;
                        margin-top: 1.8em;
                    }

                        .myForm button:hover {
                            background: #ccc;
                            cursor: pointer;
                        }
            </style>
            <form class="myForm" action="complainthandler.php">

                <p>
                    <label>
                        Name
                        <input type="text" name="customer_name" required>
                    </label>
                </p>

                <p>
                    <label>
                        Email
                        <input type="email" name="email_address">
                    </label>
                </p>

                <p>
                    <label>
                        Order number
                        <input type="text" placeholder="Only for order enquiries" name="order_number">
                    </label>
                </p>

                <p>
                    <label>
                <p><b>Enquiry Regarding</b></p>
                        <select id="pickup_place" name="enquiry_subject">
                            <option value="" selected="selected">Select One</option>
                            <option value="Website">Our Website</option>
                            <option value="Specific Product">A specific product</option>
                            <option value="Your Account">Your account</option>
                            <option value="Order">Order</option>
                        </select>
                    </label>
                </p>

                <p>
                    <label>
                        Enquiry
                        <textarea name="customer_comments" maxlength="500"></textarea>
                    </label>
                </p>

                <p><button>Submit</button></p>

            </form>
        </div>
        <!-- indexer: off -->

        <div style="float: left; clear: both; width: 0px; height: 43px;" class="height-sync-element"></div>
    </div>
