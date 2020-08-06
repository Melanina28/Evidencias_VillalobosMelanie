<?php
require 'conexion.php';

 $lastname=$_POST["lastname"];
 $user_id=$_POST['user_id'];
 $city=$_POST['city'];
 $state=$_POST['state'];
 $country=$_POST['country'];
 $birthdate="1998-03-28";
 $extrac_talent=$_POST['extrac_talent'];
 $experience=$_POST['experience'];
 $role_work=$_POST['role_work'];
 $dominated_technologies =$_POST['dominated_technologies'];
 $school_name =$_POST['school_name'];
 $linkedin =$_POST['linkedin'];
 $github =$_POST['github'];
 $skype =$_POST['skype'];
 $education =$_POST['education'];
 $salary =$_POST['salary'];
 $credits =$_POST['credits'];
 $points=$_POST['points'];
 $university_id =$_POST['university_id'];
 $cv= $_POST['cv'];
 $city_id =$_POST['city_id'];
 
 
 $sql = "INSERT INTO talent ( lastname, user_id, city, state, country, birthdate, extrac_talent, experience, role_work, dominated_technologies, school_name, linkedin, github, skype, education, salary, credits, points, university_id, cv, city_id) VALUES ('$lastname', '$user_id', '$city', '$state', '$country', '$birthdate', '$extrac_talent', $experience,'$role_work', '$dominated_technologies', '$school_name', '$linkedin', '$github', '$skype', '$education', '$salary', '$credits', '$points', '$university_id', '$cv', '$city_id')";
 if (mysqli_query($conn, $sql)) {
       echo "New record created successfully";
 } else {
       echo "Error: " . $sql . "<br>" . mysqli_error($conn);
 }
 
 mysqli_close($conn);



 



 ?>