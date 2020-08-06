<?php
//    $servername = "localhost";
//    $database = "thincrs-core-v2";
//    $username = "root";
//    $password = "";
//    $conn = mysqli_connect($servername, $username, $password, $database);
//    if (!$conn) {
//        die("Connection failed:".mysqli_connect_error());
//    }
//    echo "Connected successfully";

//    $consulta="SELECT talent.id, lastname FROM talent INNER JOIN users ON users.id= user_id";
//    $eje = mysqli_query($conn,$consulta) or die(mysqli_error($conn));

   
$talent_id= $_POST["talent_id"];
$talent_eva1= $_POST["talent_evaluation_id1"];
$talent_eva2= $_POST["talent_evaluation_id2"];
$talent_eva3= $_POST["talent_evaluation_id3"];
$talent_eva4= $_POST["talent_evaluation_id4"];
$talent_eva5= $_POST["talent_evaluation_id5"];
echo $talent_id ;
echo $talent_eva1;
echo $talent_eva2 ;
echo$talent_eva3 ;
echo$talent_eva4;
echo$talent_eva5; 
?>