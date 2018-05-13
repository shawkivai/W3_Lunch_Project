<?php
/**
 * Created by PhpStorm.
 * User: USER04
 * Date: 5/11/2018
 * Time: 11:03 AM
 */


require ("../database/db_config.php");


// Check connection
if($connect === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

// Escape user inputs for security
$employee_id = mysqli_real_escape_string($connect, $_REQUEST['employee_id']);
$username = mysqli_real_escape_string($connect, $_REQUEST['username']);
$team = mysqli_real_escape_string($connect, $_REQUEST['team']);
$mobile_no= mysqli_real_escape_string($connect, $_REQUEST['mobile_no']);

$email = mysqli_real_escape_string($connect, $_REQUEST['email']);

// attempt insert query execution
$sql = "INSERT INTO employee_table (employee_id, username, team, mobile_no, email) VALUES ('$employee_id', '$username', '$team','$mobile_no','$email')";
if(mysqli_query($connect, $sql)){
    header("location:employee_list.php");
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($connect);
}

// close connection
mysqli_close($connect);
?>