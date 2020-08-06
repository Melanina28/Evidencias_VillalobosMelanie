<?php
    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'cour_challe_orde.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

    echo '<table border=1><tr><td>id</td><td>course_id</td><td>challenge_id</td><td>position</td></tr>';

    for ($i = 2; $i<=$numRows; $i++){

        $id  = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $course_id = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $challenge_id = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
        $position = $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
        

    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $course_id.'</td>';
    echo '<td>'. $challenge_id.'</td>';
    echo '<td>'. $position.'</td>';

    echo '</tr>';


    $sql = "INSERT INTO course_challenge_order (id, course_id, challenge_id, position) VALUES 
    ('$id', '$course_id', '$challenge_id', '$position')";
    $result = mysqli_query($conn, $sql);

}
    echo '<table>';

?>