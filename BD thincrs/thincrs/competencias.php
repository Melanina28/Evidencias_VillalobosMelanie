<?php

    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'competencias.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

    echo '<table border=1><tr><td>id</td><td>admin_id</td><td>name</td><td>description</td></tr>';
   
    for ($i = 2; $i<=$numRows; $i++){

        $id = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $admin_id = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $name = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
        $description = $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
    
        echo '<tr>';
        echo '<td>'. $id.'</td>';
        echo '<td>'. $admin_id.'</td>';
        echo '<td>'. $name.'</td>';
        echo '<td>'. $description.'</td>'  ;
        echo '</tr>';

        



        $sql = "INSERT INTO competence (id,admin_id, name, description ) VALUES 
    ('$id','$admin_id', '$name', '$description')";
    $result = mysqli_query($conn, $sql);

    }
echo '<table>';
?>