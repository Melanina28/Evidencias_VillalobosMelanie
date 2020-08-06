<?php
    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'leves.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

    echo '<table border=1><tr><td>id</td><td>evaluation_id</td><td>name</td><td>min_score</td><td>max_score</td></tr>';

    for ($i = 2; $i<=$numRows; $i++){

        $id  = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $evaluation_id = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $name = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
        $min_score = $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
        $max_score = $objPHPExcel->getActiveSheet()->getCell('E'.$i)->getCalculatedValue();
 
    
        

    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $evaluation_id.'</td>';
    echo '<td>'. $name.'</td>';
    echo '<td>'. $min_score.'</td>';
    echo '<td>'. $max_score.'</td>';
   

    echo '</tr>';


    $sql = "INSERT INTO level (id,evaluation_id, name, min_score, max_score) VALUES 
    ('$id','$evaluation_id','$name','$min_score','$max_score')";
    $result = mysqli_query($conn, $sql);

}
    echo '<table>';

?>