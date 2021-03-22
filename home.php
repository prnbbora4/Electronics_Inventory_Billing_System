<?php
    session_start();
   if(!isset($_SESSION["loggedIn"]))
        header("location:login.php");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home / Dashboard</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="assets/style.css">
</head>
<body class="home">

    <div class="header">
        <h2> Electronics  Inventory Billing System</h2>
        <h2 class="header__time"></h2>
        <a href="logout.php"><h2>Logout</h2></a>
    </div>

    <div class="home__dashboard">
        <a href="products.php" class="home__dashboard__tile">
            <img src="assets/images/products.png">
            <div class="home__dashboard__tile__description">
                <h1>Products</h1>
                <p>Add, Edit, and Remove product(s) and Manage Stock(s) of your products</p>
            </div>  
        </a>
         <a href="category.php" class="home__dashboard__tile">
            <img src="assets/images/category.png">
            <div class="home__dashboard__tile__description">
                <h1>Category</h1>
                <p>Manage categories for your products</p>
            </div>  
        </a>
        <a href="brand.php" class="home__dashboard__tile">
            <img src="assets/images/brand.png">
            <div class="home__dashboard__tile__description">
                <h1>Brand</h1>
                <p>Manage brands for your products</p>
            </div>  
        </a>
        <a href="pos.php" class="home__dashboard__tile">
            <img src="assets/images/sell.png">
            <div class="home__dashboard__tile__description">
                <h1>Sell Products</h1>
                <p>Sell your products to your clients all over the Philippines!</p>
            </div>  
        </a>
        <a href="sales-inventory.php" class="home__dashboard__tile">
            <img src="assets/images/logs.png">
            <div class="home__dashboard__tile__description">
                <h1>Sales & Inventory Logs</h1>
                <p>View sales and recent inventory logs</p>
            </div>  
        </a>

       
    </div>

    <script src="assets/app.js"></script>
</body>
</html>