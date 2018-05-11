<?php
session_start();
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
    <!--    <link rel="stylesheet" type="text/css" href="../css/login_style.css">-->
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
            <li><a href="../view_menu.php"> View Menu</a> </li>
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
                    <li><a href="../logout.php">Logout</a></li>
                </ul>
            </li>
        </ul>
        </div>
    </div>
</nav>
<div class="container">
    <h1 class="lunch_header">
        Please Update The Snacks Menu
    </h1>
    <form action="../update_lunch_db.php" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label class="control-label col-sm-2">Update Menu</label>
            <div class="col-sm-3">
                <input type="file" class="form-control"  placeholder="upload file" name="file">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-3">
                <button type="submit" class="btn btn-success" name="update">Update Menu</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>