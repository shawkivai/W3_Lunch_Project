

<?php

require ("../database/db_config.php");

$query="select * from employee_table";

$result=mysqli_query($connect,$query);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/home.css">
    <script rel="stylesheet" type="text/javascript" src="../Js/login.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
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
<!--            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Employee List<span class="caret"></span></a></li>-->
            <li><a href="../employee/add_employee.php">Add New Employee</a> </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="../index.php"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
        </ul>
    </div>
    </div>
</nav>

<div class="container">

    <center><h1 class="lunch_header">Employee List of W3 Engineers</h1></center>

    <div class="table-responsive">
        <table class="table table-bordered table-striped">
            <tr>
                <th class="info">Employee Id</th>
                <th class="info">Employee Name</th>
                <th class="info">Email</th>
                <th class="info">Mobile No.</th>
                <th class="info">Team</th>
            </tr>
            <?php
            while($row = mysqli_fetch_array($result))
            {
                echo '
      <tr class="success">
       <td>'.$row["employee_id"].'</td>
       <td>'.$row["username"].'</td>
       <td>'.$row["email"].'</td>
        <td>'.$row["mobile_no"].'</td>
         <td>'.$row["team"].'</td>
      </tr>
      ';
            }
            ?>
        </table>
    </div>


</div>

</body>
</html>
