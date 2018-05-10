<?php
/**
 * Created by PhpStorm.
 * User: USER04
 * Date: 5/8/2018
 * Time: 1:34 PM
 */
session_start();
$connect=mysqli_connect("localhost","root","","w3_lunch");
if(isset($_POST['update'])){
    $i=0;
    if($_FILES['file']['name']){
        $filename=explode('.',$_FILES['file']['name']);
        if(end($filename)=="csv"){
            $handle=fopen($_FILES['file']['tmp_name'],"w");
            while ($data=fgetcsv($handle)) {
                $date = mysqli_real_escape_string($connect, $data[0]);
                $menu1 = mysqli_real_escape_string($connect, $data[1]);
                $menu2 = mysqli_real_escape_string($connect, $data[2]);
                $menu3 = mysqli_real_escape_string($connect, $data[3]);
                $menu4 = mysqli_real_escape_string($connect, $data[4]);
                // $created_at=mysqli_real_escape_string($connect,$data[5]);
                if ($i > 0) {
//                    $query = "insert into lunch_menu (date, menu1, menu2, menu3, menu4) VALUES ('$date','$menu1','$menu2','$menu3','$menu4')";

                   $query="Update lunch_menu Set date='$date',menu1='$menu1',menu2='$menu2',menu3='$menu3',menu4='$menu4'";
                    mysqli_query($connect, $query);
                }
                $i++;
            }
            fclose($handle);
            header("location:index.php");
        }else {

            echo "not updated";
        }
    }

    else{
        echo "select csv";
    }


}