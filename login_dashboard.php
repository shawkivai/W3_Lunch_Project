<?php
session_start();

$connect=mysqli_connect("localhost","root","","w3_lunch");

$query1="select uploaded_date from tbl_lunch_files order by id DESC limit 1";
$query2="select uploaded_date from tbl_snacks_files order BY id DESC limit 1";

$result_lunch=mysqli_query($connect,$query1);
$result_snacks=mysqli_query($connect,$query2);
$row1= mysqli_fetch_array($result_lunch);
$row2=mysqli_fetch_array($result_snacks);
$time=$row1['uploaded_date'];
$snacks_update=$row2['uploaded_date'];
?>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <title>W3 Lunch</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/home.css">
    <link rel="stylesheet" type="text/css" href="css/slider_images.css">
    <script type="text/javascript" src="Js/slider_images.js"></script>

    <script type="text/javascript" src="Js/login.js"></script>
    <script type="text/javascript" src="js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand w3_engineers" href="index.php">W3 Engineers Ltd.</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
            <li class="active"><a href="login_dashboard.php">Home</a></li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Upload Menu<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="upload%20menu/lunch_menu.php">Lunch</a></li>
                    <li><a href="upload%20menu/snacks_menu.php">snacks</a></li>
                </ul>
            </li>

            <li><a href="employee/employee_list.php">Employee List</a></li>
<!--            <li><a href="#">Create Menu</a></li>-->
<!--            <li><a href="view_menu.php"> View Menu</a> </li>-->
        </ul>


        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <?php
                    echo $_SESSION['user'];
                    ?>
                    <span class="glyphicon glyphicon-log-in"></span>

                </a>
                <ul class="dropdown-menu">
                    <li><a href="logout.php">Logout</a></li>
                </ul>
            </li>
        </ul>
    </div>
    </div>
</nav>
<br><br>
<div class="container">
    <center><h1 class="lunch_header">Welcome to W3 Engineers Food Admin Panel</h1>
    </center>
    <br><br>
    <br><br>



    <div class="row">
        <div class="col-md-5">
            <p class="lunch_item"> Lunch Items</p>
            <div class="thumbnail">
                <div id="myCarousel2" class="carousel slide " data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="item active">
<!--                            <img id="sale-image" src="images/sale.png" class="img-responsive center-block">-->
                            <img id="" src="images/lunch1.jpg" class="img-responsive center-block">
                        </div>
                        <div class="item">
                            <img id="" src="images/lunch3.jpg" class="img-responsive center-block">
                        </div>
                        <div class="item">
                            <img id="" src="images/lunch2.jpg" class="img-responsive center-block">
                        </div>
                    </div>
                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel2" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel2" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-md-2">
        </div>
        <div class="col-md-5">
            <p class="lunch_item">Snacks items</p>
            <div class="thumbnail">
                <div id="myCarousel3" class="carousel slide " data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="item active">
                            <!--                            <img id="sale-image" src="images/sale.png" class="img-responsive center-block">-->
                            <img id="" src="images/snack1.jpg" class="img-responsive center-block">
                        </div>
                        <div class="item">
                            <img id="" src="images/snack2.JPG" class="img-responsive center-block">
                        </div>

                        <div class="item">
                            <img id="" src="images/snack3.jpg" class="img-responsive center-block">
                        </div>
                    </div>
                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel3" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel3" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <center><p class="notification"> Lunch Menu Uploaded at <?php echo $time ?> </p></center>
    <center><p class="notification"> Snacks updated at <?php echo $snacks_update?>  </p></center>
</footer>


</body>
</html>
