<?php
    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'Evaluacion.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();
     
        
    echo '<table border=1><tr><td>id</td><td>admin_id</td><td>description</td><td>limit_time</td><td>min_score</td><td>max_intents</td><td>random</td><td>created_at</td><td>duration_minutes</td><td>evaluation_type_id</td></tr>';
    
    for($i=2; $i<=$numRows; $i++){
        
        $id = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $admin_id = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $name = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
        $description = $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
        $limit_time = $objPHPExcel->getActiveSheet()->getCell('E'.$i)->getCalculatedValue();
        $min_score = $objPHPExcel->getActiveSheet()->getCell('F'.$i)->getCalculatedValue();
        $max_intents = $objPHPExcel->getActiveSheet()->getCell('G'.$i)->getCalculatedValue();
        $random = $objPHPExcel->getActiveSheet()->getCell('H'.$i)->getCalculatedValue();
        $created_at = $objPHPExcel->getActiveSheet()->getCell('I'.$i)->getCalculatedValue();
        $evaluation_type_id = $objPHPExcel->getActiveSheet()->getCell('J'.$i)->getCalculatedValue();

        echo '<tr>';
        echo '<td>'. $id.'</td>';
        echo '<td>'. $admin_id.'</td>';
        echo '<td>'. $name.'</td>';
        echo '<td>'. $description.'</td>';
        echo '<td>'. $limit_time.'</td>';
        echo '<td>'. $min_score.'</td>';
        echo '<td>'. $max_intents.'</td>';
        echo '<td>'. $random.'</td>';
        echo '<td>'. $created_at.'</td>';
        echo '<td>'. $evaluation_type_id.'</td>';
        echo '</tr>';
  
  $sql = "INSERT INTO evaluation (id,admin_id, name, description, limit_time, min_score, max_intents, random, created_at, evaluation_type_id ) VALUES 
        ('$id','$admin_id', '$name', '$description', '$limit_time', '$min_score', '$max_intents', '$random', '$created_at', '$evaluation_type_id')";
        $result = mysqli_query($conn, $sql);
    
    }
    echo '<table>';
?>