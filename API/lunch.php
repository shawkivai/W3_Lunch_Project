<?php
/**
 * Created by PhpStorm.
 * User: USER04
 * Date: 5/8/2018
 * Time: 3:04 PM
 */
# API call to get data from lunch_menu table
$connect=mysqli_connect("localhost","root","","w3_lunch");

$query="select * from lunch_menu";

$result=mysqli_query($connect,$query);

$response = array();

//    $row = mysqli_fetch_array($result);
//    print_r($row);

    if(mysqli_num_rows($result)>0){
        $response['success']=1;
        $response['message']='data found';
        $lunch=array();
        while ($row = mysqli_fetch_array($result)){
            $data = array();
            $data['id']=$row['id'];
            $data['date']=$row['date'];
            $data['Fixed_menu']=$row['menu1'];
            $data['Alternate_menu']=array($row['menu2'],$row['menu3'],$row['menu4']);
            array_push($lunch, $data);
        }
        $response['lunch']=$lunch;
    }
    else{
        $response['success']=0;
        $response['message']='data not found';
    }
    echo json_encode($response,JSON_UNESCAPED_SLASHES);