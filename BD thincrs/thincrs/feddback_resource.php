<?php
    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'feedback_resource.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

    echo '<table border=1><tr><td>id</td><td>feedback_id</td><td>resource_id</td></tr>';

    for ($i = 2; $i<=$numRows; $i++){

        $id  = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $feedback_id = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $resource_id = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
 
        

    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $feedback_id.'</td>';
    echo '<td>'. $resource_id.'</td>';
    echo '</tr>';


    $sql = "INSERT INTO feedback_resource (id, feedback_id,resource_id) VALUES 
    ('$id',  '$feedback_id', '$resource_id')";
    $result = mysqli_query($conn, $sql);

}
    echo '<table>';

?>