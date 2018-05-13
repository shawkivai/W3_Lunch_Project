<?php
session_start();

require ("../database/db_config.php");

$query="select * from tbl_snacks_files limit 5";

$result=mysqli_query($connect,$query);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>W3 Lunch</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="stylesheet" type="text/css" href="../css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="../css/demo.css" />
    <link rel="stylesheet" type="text/css" href="../css/component.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/home.css">
    <script rel="stylesheet" type="text/javascript" src="../Js/login.js"></script>
</head>
<body>

<script>(function(e,t,n){var r=e.querySelectorAll("html")[0];r.className=r.className.replace(/(^|\s)no-js(\s|$)/,"$1js$2")})(document,window,0);</script>

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
                <li><a href="../view_menu/view_snacks_menu.php">View Snacks Menu</a></li>
                <li><a href="../update_menu/update_snacks_menu.php">Update Snacks Menu</a> </li>
                <li><a href="../download/download_lunch.php">Download Snacks Order</a> </li>
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
    <center><h1 class="lunch_header"> Please Upload the Snacks menu for this Month</h1></center>
    <div class="row" id="upload_lunch_menu_view">
        <div class="col-md-3 drop_menu">
            <div class="dropdown">
                <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">Snacks
                    <span class="caret"></span></button>
                <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="lunch_menu.php">Lunch</a></li>
                </ul>
            </div>
        </div>

        <div class="col-md-9 form_edit">
            <form action="../upload_snacks_menu.php" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <!--            <label class="control-label col-sm-2">Upload Menu</label>-->
                    <div class="col-md-5">
                            <input type="file" name="file" id="file-1" class="inputfile inputfile-1" data-multiple-caption="{count} files selected" multiple required/>
                            <label for="file-1"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 20 17"><path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/></svg> <span>Choose file&hellip;</span></label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-3">
                        <button type="submit" class="btn btn-success" name="upload">Upload</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <center><h1 class="lunch_header"> Uploaded Files</h1></center>
    <div class="table-responsive">
        <table class="table table-bordered table-striped">
            <tr>
                <th class="info">ID</th>
                <th class="info">File Name</th>
                <th class="info">File_type</th>
                <th class="info">Uploaded Date</th>
            </tr>
            <?php
            while($row = mysqli_fetch_array($result))
            {
                echo '
      <tr class="success">
       <td>'.$row["id"].'</td>
       <td>'.$row["file_name"].'</td>
       <td>'.$row["file_type"].'</td>
        <td>'.$row["uploaded_date"].'</td>
      </tr>
      ';
            }
            ?>
        </table>
    </div>
</div>
<script src="../Js/custom-file-input.js"></script>
</body>
</html>
