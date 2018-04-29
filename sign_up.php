<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/login_style.css">
    <link rel="stylesheet" type="text/css" href="css/home.css">
    <script rel="stylesheet" type="text/javascript" src="Js/login.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand w3_engineers" href="index.php">W3 Engineers Ltd.</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Page 1-1</a></li>
                    <li><a href="#">Page 1-2</a></li>
                    <li><a href="#">Page 1-3</a></li>
                </ul>
            </li>
            <li><a href="#">Page 2</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="sign_up.php"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
    </div>
</nav>

<div class="container">

    <h1 class="lunch_header">Please Sign Up</h1>

        <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->

    <div class="row signup_form">
        <form class="form-horizontal" action="signup_insert.php" method="post">
            <div class="form-group">
                <label class="control-label col-sm-2" for="employee_id">Employee Id</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="email" placeholder="Employee Id" name="employee_id">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2">Employee Name</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="pwd" placeholder="Enter name" name="employee_name">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2"> Designation</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="email" placeholder="Enter designation" name="employee_designation">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="email">username</label>
                <div class="col-sm-4">
                    <input type="email" class="form-control" id="email" placeholder="Enter email" name="username">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="email">Password</label>
                <div class="col-sm-4">
                    <input type="password" class="form-control" id="email" placeholder="Enter password" name="password">
                </div>
            </div>


            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-4">
                    <button type="submit" class="btn btn-info" name="signup">Submit</button>
                </div>
            </div>
        </form><!-- /card-container -->
    </div>
</div>

</body>
</html>