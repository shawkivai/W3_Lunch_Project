<?php
/**
 * Created by PhpStorm.
 * User: shawki vai
 * Date: 4/29/2018
 * Time: 12:18 AM
 */
$con=mysqli_connect('localhost','root','','w3_lunch');
session_start();
if(isset($_POST['login'])) {
    $offiece_id=$_POST['offiece_id'];
    $password=$_POST['password'];
    //$employee_name=$_POST['employee_name'];

     $offiece_id=mysqli_real_escape_string($con,$offiece_id);
    $password=mysqli_real_escape_string($con, $password);
    $query="select offiece_id,password from tbl_admin where offiece_id='$offiece_id' and password='$password'";
    $run=mysqli_query($con,$query);
    if(mysqli_num_rows($run)>0) {
        $_SESSION['user']=$offiece_id;
        echo "<script> window.open('login_dashboard.php','_self')</script>";
        exit();
    }
    else {
        echo"<script> window.open('index.php','_self')</script>";
    }
}
?>