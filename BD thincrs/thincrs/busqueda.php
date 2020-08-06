<?php
 require 'Classes/PHPExcel/IOFactory.php';
 require 'conexion.php';

 $servername = "localhost";
               $database = "thincrs-core-v2";
               $username = "root";
               $password = "";
               $buscador =$_POST['busqueda'];
               $conn = mysqli_connect($servername, $username, $password, $database);
               if (!$conn) {
                   die("Connection failed:".mysqli_connect_error());
               }
               echo "Connected successfully";

               $consulta="SELECT id, evaluation_id, talent_id FROM talent_evaluation_competence WHERE talent_id = '%".$buscador."%' ";
               $eje = mysqli_query($conn,$consulta) or die(mysqli_error($conn));


?>