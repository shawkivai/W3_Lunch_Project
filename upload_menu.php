<?php
/**
 * Created by PhpStorm.
 * User: shawki vai
 * Date: 4/29/2018
 * Time: 7:28 PM
 */
session_start();
$connect=mysqli_connect("localhost","root","","w3_lunch");
if(isset($_POST['upload'])){
    $i=0;
    if($_FILES['file']['name']){
        $filename=explode('.',$_FILES['file']['name']);
        if(end($filename)=="csv"){
            $handle=fopen($_FILES['file']['tmp_name'],"r");
            while ($data=fgetcsv($handle)) {
                $date = mysqli_real_escape_string($connect, $data[0]);
                $menu1 = mysqli_real_escape_string($connect, $data[1]);
                $menu2 = mysqli_real_escape_string($connect, $data[2]);
                $menu3 = mysqli_real_escape_string($connect, $data[3]);
                $menu4 = mysqli_real_escape_string($connect, $data[4]);
                // $created_at=mysqli_real_escape_string($connect,$data[5]);
                if ($i > 0) {
                    $query = "insert into lunch_menu (date, menu1, menu2, menu3, menu4) VALUES ('$date','$menu1','$menu2','$menu3','$menu4')";

                    $query2="DELETE FROM lunch_menu WHERE expired_date <= NOW()";
                    mysqli_query($connect, $query,$query2);
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