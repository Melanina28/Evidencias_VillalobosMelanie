<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<form action="form2.php" metho="POST">
<input type ="text" name="busqueda" id="busqueda">
<input type="submit" value="guardar">
</form>

<?php
include 'busqueda.php';

while($row =mysqli_fetch_array($eje)){?>
<tr>
    <td><?= $row['id']?></td>
    <td><?= $row['evaluation_id']?></td>
    <td><?= $row['talent_id']?></td>
<tr>


<?php }
?>





<!-- <form method="POST" action="Megutas.php">
<br>
<label>talento</label>
<input type="numeric" name="talent_id" >
<br>
<label>talento_eva</label>
<input type="numeric" name="talent_evaluation_id1" >
<br>
<label>talento_eva</label>
<input type="numeric" name="talent_evaluation_id2" >
<br>
<label>talento_eva</label>
<input type="numeric" name="talent_evaluation_id3" >
<br>
<label>talento_eva</label>
<input type="numeric" name="talent_evaluation_id4" >
<br>
<label>talento_eva</label>
<input type="numeric" name="talent_evaluation_id5" >
<br>
<button type="submit">Manda</button>
</form> -->

</body>
</html>