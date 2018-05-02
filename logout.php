<?php
/**
 * Created by PhpStorm.
 * User: shawki vai
 * Date: 5/3/2018
 * Time: 12:34 AM
 */

session_start();
session_destroy();
header("location:index.php");
exit();