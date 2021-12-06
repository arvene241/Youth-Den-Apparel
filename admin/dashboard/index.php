<?php
    include '../connection.php'; 

    
    if(isset($_GET['page'])) {
        $page = $_GET['page'];
    } else {
        $page = 1;
    }

    $numPerPage = 4;
    $startFrom = ($page - 1) * $numPerPage;

    
    $con = openCon(); // open connection
    $dbSelected = $con->select_db('youthden_ecommerce'); // select database
    if (!$dbSelected) {
        die("Can\'t use test_db : " . mysql_error());
    }
    $query = "SELECT * FROM tbl_products LIMIT $startFrom, $numPerPage"; // LIMIT 0, 4 
    $result = $con->query($query);

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css" rel="stylesheet" />
  <link rel="icon" href="assets/img/logo.png" type="icon" />
  <link rel="stylesheet" href="assets/css/styles.css" />
  <title>Youth Den</title>
</head>

<body id="body-pd">

  <!-- header -->
  <header class="header" id="header">
    <div class="header__toggle">
      <i class="bx bx-menu" id="header-toggle"></i>
    </div>

    <div class="header__img">
      <img src="assets/img/profile pic.png" alt="" />
    </div>
  </header>

  <!-- sidebar-->
  <div class="l-navbar" id="nav-bar">
    <nav class="nav">
      <div>
        <a href="index.php" class="nav__logo">
          <img src="assets/img/logo.png" />
          <span class="nav__logo-name">Youth Den</span>
        </a>

        <div class="nav__list">
          <a href="index.php" class="nav__link active">
            <i class="bx bx-grid-alt nav__icon"></i>
            <span class="nav__name">Dashboard</span>
          </a>
          <a href="products.php" class="nav__link">
            <i class="bx bx-shopping-bag nav__icon"></i>
            <span class="nav__name">Products</span>
          </a>

          <a href="customers.php" class="nav__link">
            <i class="bx bx-group nav__icon"></i>
            <span class="nav__name">Customers</span>
          </a>

          <a href="orders.php" class="nav__link">
            <i class="bx bx-basket nav__icon"></i>
            <span class="nav__name">Orders</span>
          </a>

          <a href="staff.php" class="nav__link">
            <i class="bx bx-user-circle nav__icon"></i>
            <span class="nav__name">Our Staff</span>
          </a>

          <a href="setting.php" class="nav__link">
            <i class="bx bx-cog nav__icon"></i>
            <span class="nav__name">Settings</span>
          </a>
        </div>
      </div>
      <a href="#" class="nav__link">
        <i class="bx bx-log-out nav__icon"></i>
        <span class="nav__name">Log Out</span>
      </a>
    </nav>
  </div>

  <!-- dashboard-->
  <div class="dashboard-container">
    <h1>Dashboard</h1>
    <h4>Welcome back Admin.</h4>
    <div class="dashboard">
      <div class="dashboard-banner">
        <img src="assets/img/dashboard pic.png" id="image-db" alt="" />
        <div class="banner-text">
          <h3>
            <span>Since your last login on the system, there were:</span><br />
            <ul>
              <li>Changes in the system.</li>
              <li>Updates on the products.</li>
              <li>Huge progress in the sales.</li>
            </ul>
          </h3>
        </div>
      </div>
      <div class="dashboard-statistics">
        <div class="grid-item">
          <a href="">
            <p>Total Sales</p>
            <span class="stats">40 121</span>
            <img src="assets/img/graph.png" alt="">
          </a>
        </div>
        <div class="grid-item">
          <a href="">
            <p>Total Order</p>
            <span class="stats">1367</span>
            <img src="assets/img/order not active.png" alt="">
          </a>
        </div>
        <div class="grid-item">
          <a href="">
            <p>Total Product</p>
            <span class="stats">400</span>
            <img src="assets/img/product not active.png" alt="">
          </a>
        </div>
        <div class="grid-item">
          <a href="">
            <p>Total User</p>
            <span class="stats">40</span>
            <img src="assets/img/customer not active.png" alt="">
          </a>
        </div>
      </div>
    </div>
  </div>

  <?php
    closeCon($con); // close connection
  ?>

  <script src="assets/js/main.js"></script>

</body>
</html>