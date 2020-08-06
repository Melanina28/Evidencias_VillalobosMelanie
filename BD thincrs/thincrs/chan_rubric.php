<?php
    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'chanlle_rubric.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

    echo '<table border=1><tr><td>id</td><td>rubric_id</td><td>challenge_id</td><td>value</td><td>feedback</td></tr>';

    for ($i = 2; $i<=$numRows; $i++){

        $id  = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $rubric_id = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $challenge_id = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
        $value = $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
        $feedback = $objPHPExcel->getActiveSheet()->getCell('E'.$i)->getCalculatedValue();
        

    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $rubric_id.'</td>';
    echo '<td>'. $challenge_id.'</td>';
    echo '<td>'. $value.'</td>';
    echo '<td>'. $feedback.'</td>';
    echo '</tr>';


    $sql = "INSERT INTO challenge_rubric (id, rubric_id, challenge_id, value, feedback) VALUES 
    ( '$id', '$rubric_id', '$challenge_id','$value', '$feedback')";
    $result = mysqli_query($conn, $sql);

}
    echo '<table>';

?>