<?php
/**
 * Created by PhpStorm.
 * User: shawki vai
 * Date: 4/29/2018
 * Time: 12:02 AM
 */

    $connect=mysqli_connect("localhost","root","","w3_lunch");


// Check connection
if($connect === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

// Escape user inputs for security
$employee_id = mysqli_real_escape_string($connect, $_REQUEST['employee_id']);
$employee_name = mysqli_real_escape_string($connect, $_REQUEST['employee_name']);
$employee_designation = mysqli_real_escape_string($connect, $_REQUEST['employee_designation']);
$username= mysqli_real_escape_string($connect, $_REQUEST['username']);

$password = mysqli_real_escape_string($connect, $_REQUEST['password']);

// attempt insert query execution
$sql = "INSERT INTO user (employee_id, employee_name, employee_designation, username, password) VALUES ('$employee_id', '$employee_name', '$employee_designation','$username','$password')";
if(mysqli_query($connect, $sql)){
    echo "Records added successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($connect);
}

// close connection
mysqli_close($connect);
?>