<?php

include 'includes/connection.php';

$con = openCon(); // open connection
$dbSelected = $con->select_db('youthden_ecommerce'); // select database
if (!$dbSelected) {
    die("Can\'t use test_db : " . mysql_error());
}

session_start();

?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Shop</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link rel="icon" type="image/png" href="public/images/logo/logo-arvene-ver.png" />
    <link rel="stylesheet" href="./public/css/checkout.css" />
</head>

<body>
    <!-- HEADER -->
    <header>
        <!-- NAV -->
        <nav class="sticky">
            <div class="container navbar">
                <div class="navbar-left">
                    <div class="navbar-logo">
                        <a href="index.php"><img src="public/images/logo/logo-arvene-ver.png" alt="logo" /></a>
                    </div>
                    <div class="overlay">
                        <ul class="menu">
                            <li class="nav-item">
                                <a class="nav-link" href="index.php">home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="catalog.php">shop</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.php">about</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="faqs.php">faq</a>
                            </li>
                            <div class="sign-in">
                                <button class="btn-signIn">
                                    <a href="sign-up.php">sign in</a>
                                </button>
                            </div>
                        </ul>
                    </div>
                </div>
                <div class="navbar-right">
                    <div class="navbar-button icon1">
                        <a href="cart.php"></a>
                    </div>
                    <div class="navbar-button icon2">
                        <a href="sign-up.php"></a>
                    </div>
                    <div class="navbar-button hamburger"></div>
                </div>
            </div>
        </nav>
    </header>

    <!-- CHECKOUT-->
    <section class="checkout">
        <div class="container">
            <div id="title">checkout</div>
            <div id="subtitle">billing details</div>
            <div class="d-flex">
                <form action="cust_info.php" method="POST">
                    <input type="text" name="name" placeholder="Name" />
                    <input type="email" name="email" placeholder="Email Address" />
                    <input type="text" name="address" placeholder="Address" />
                    <input type="tel" name="phone" placeholder="Phone Number" />
                </form>
                <div class="order">

                <?php 

                $total_price = 0;

                 if (!empty($_SESSION['cart'])) {

                  foreach ($_SESSION['cart'] as $key => $value) { ?>
                     
                 <?php $total_price = $total_price + $value['quantity'] * $value['product_price']; ?>                        
                <?php }

                } ?>
                    <table>
                        <tr>
                            <th colspan="2">Your order</th>
                        </tr>
                        <tr>
                            <td id="total">Total</td>
                            <td id="price">PHP <?php echo number_format($total_price,2); ?></td>
                        </tr>
                    </table>
                    <br />
                    <button class="placeorder"><a href="">place order</a></button>
                </div>
            </div>
        </div>
    </section>


    <?php include 'includes/footer.php' ?>

    <script src="public/js/app.js"></script>
    <script src="public/js/hamburger.js"></script>
</body>

</html>