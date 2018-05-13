<?php
/**
 * Created by PhpStorm.
 * User: USER04
 * Date: 5/8/2018
 * Time: 1:34 PM
 */
require ("database/db_config.php");
session_start();
if(isset($_POST['update'])){
    $delete_query="delete from lunch_menu";
    mysqli_query($connect,$delete_query);
    $i=0;
    if($_FILES['file']['name']){
        $file_name=$_FILES['file']['name'];
        $filename=explode('.',$_FILES['file']['name']);
        if(end($filename)=="csv"){
            $query_file_name = "insert into tbl_lunch_files (file_name,file_type) VALUES ('$file_name','$filename[1]')";
            mysqli_query($connect, $query_file_name);
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

                  // $query="Update lunch_menu Set date='$date',menu1='$menu1',menu2='$menu2',menu3='$menu3',menu4='$menu4'";
                    mysqli_query($connect, $query);
                }
                $i++;
            }
            fclose($handle);
            header("location:view_menu/view_lunch_menu.php");
        }else {

            echo "not updated";
        }
    }

    else{
        echo "select csv";
    }


}