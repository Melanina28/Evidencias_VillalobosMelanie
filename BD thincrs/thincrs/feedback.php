<?php
    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'feedback.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

    echo '<table border=1><tr><td>id</td><td>description</td><td>admin_id</td><td>feedback_type_id</td></tr>';

    for ($i = 2; $i<=$numRows; $i++){

        $id  = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $description = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $admin_id = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
        $feedback_type_id = $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
        

    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $description.'</td>';
    echo '<td>'. $admin_id.'</td>';
    echo '<td>'. $feedback_type_id.'</td>';

    echo '</tr>';


    $sql = "INSERT INTO feedback (id, description, admin_id, feedback_type_id) VALUES 
    ('$id', '$description', '$admin_id', '$feedback_type_id')";
    $result = mysqli_query($conn, $sql);

}
    echo '<table>';

?>