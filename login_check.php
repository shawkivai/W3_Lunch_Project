<?php
/**
 * Created by PhpStorm.
 * User: shawki vai
 * Date: 4/29/2018
 * Time: 12:18 AM
 */

$con=mysqli_connect('localhost','root','','w3_lunch');
session_start();

if(isset($_SESSION['user'])){
    header("Location:login_dashboard.php");
}

if(isset($_POST['login'])) {

    $username=$_POST['username'];
    $password=$_POST['password'];
    //$employee_name=$_POST['employee_name'];
    $_SESSION['user']=$username;

   // $username-mysqli_real_escape_string($_POST['username']);
    //$password=mysqli_real_escape_string($_POST['password']);

    $query="select * from user where username='$username' and password='$password'";
    $run=mysqli_query($con,$query);

    if(mysqli_num_rows($run)>0) {
            echo "<script> window.open('login_dashboard.php','_self')</script>";
        //$_SESSION['username']=$username;
    } else {
        echo"<script>alert('incorrect user name or password')</script>";
    }

}
?>