<?php
/**
 * Created by PhpStorm.
 * User: shawki vai
 * Date: 4/29/2018
 * Time: 7:28 PM
 */
require ("database/db_config.php");
session_start();
if(isset($_POST['upload'])){
    $i=0;
    if($_FILES['file']['name']){
        $file_name=$_FILES['file']['name'];
        $filename=explode('.',$_FILES['file']['name']);
        if(end($filename)=="csv"){
            $query_file_name = "insert into tbl_snacks_files (file_name,file_type) VALUES ('$file_name','$filename[1]')";
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
                    $query = "insert into snacks_menu (date, item1, item2, item3, item4) VALUES ('$date','$menu1','$menu2','$menu3','$menu4')";

//                    $query2="DELETE FROM lunch_menu WHERE expired_date <= NOW()";
                    mysqli_query($connect, $query);
                }
                $i++;
            }
            fclose($handle);
            header("location:view_menu/view_snacks_menu.php");
        }else {

            echo "not updated";
        }
    }

    else{
        echo "select csv";
    }
}