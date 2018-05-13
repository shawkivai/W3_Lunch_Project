

<?php

session_start();
$connect=mysqli_connect("localhost","root","","w3_lunch");

$query="select * from lunch_menu";

$result=mysqli_query($connect,$query);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>W3 Lunch</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/home.css">
    <script rel="stylesheet" type="text/javascript" src="../Js/login.js"></script>
    <script rel="stylesheet" type="text/javascript" src="../Js/update_menu.js"></script>
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
            <a class="navbar-brand w3_engineers" href="../index.php">W3 Engineers Ltd.</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">

        <ul class="nav navbar-nav">
            <li class="active"><a href="../login_dashboard.php">Home</a></li>
            <li><a href="../update_menu/update_lunch_menu.php" id="menu_update"> Update Menu</a> </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="../index.php"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
        </ul>
    </div>
    </div>
</nav>
<br><br>
<div class="container">
<div class="row">
    <div class="col-md-9">
    <center> <h1 class="lunch_header view_menu_text">This Month Lunch Menu List</h1></center>
    </div>
    <div class="col-md-3 drop_menu1">
        <div class="dropdown">
            <button class="btn btn-default dropdown-toggle" type="button" id="" data-toggle="dropdown">Lunch
                <span class="caret"></span></button>
            <ul class="dropdown-menu" role="menu" aria-labelledby="menu1" >
                <li role="presentation"><a role="menuitem" tabindex="-1" href="view_snacks_menu.php">Snacks</a></li>

            </ul>
        </div>
    </div>

</div>
    <br>
    <div class="table-responsive">

                <table class="table table-bordered table-striped">
                    <tr>
                        <th class="info">Date</th>
                        <th class="info">Fixed Item</th>
                        <th class="info">Item1</th>
                        <th class="info">Item2</th>
                        <th class="info">Item3</th>
                        <th class="info">Created_at</th>
                    </tr>
                    <?php
                    while($row = mysqli_fetch_array($result))
                    {
                        echo '
      <tr class="success">
       <td>'.$row["date"].'</td>
       <td>'.$row["menu1"].'</td>
       <td>'.$row["menu2"].'</td>
        <td>'.$row["menu3"].'</td>
         <td>'.$row["menu4"].'</td>
          <td>'.$row["created_at"].'</td>
      </tr>
      ';
                    }
                    ?>
                </table>

        </div>

</div>

</body>
</html>
