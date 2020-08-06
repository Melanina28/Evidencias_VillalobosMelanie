<?php
    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'preguntas.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

    echo '<table border=1><tr><td>id</td><td>question_type_id</td><td>admin_id</td><td>short_name</td><td>question</td><td>points</td><td>question_category_id</td></tr>';

    for ($i = 2; $i<=$numRows; $i++){
        $id= $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $question_type_id  = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $admin_id = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
        $short_name = $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
        $question = $objPHPExcel->getActiveSheet()->getCell('E'.$i)->getCalculatedValue();
        $points = $objPHPExcel->getActiveSheet()->getCell('F'.$i)->getCalculatedValue();
        $question_category_id = $objPHPExcel->getActiveSheet()->getCell('G'.$i)->getCalculatedValue();

    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $question_type_id.'</td>';
    echo '<td>'. $admin_id.'</td>';
    echo '<td>'. $short_name.'</td>';
    echo '<td>'. $question.'</td>';
    echo '<td>'. $points.'</td>';
    echo '<td>'. $question_category_id.'</td>';
    echo '</tr>';


    $sql = "INSERT INTO question (id,question_type_id, admin_id, short_name, question, points, question_category_id ) VALUES 
    ('$id','$question_type_id', '$admin_id', '$short_name', '$question', '$points', '$question_category_id')";
    $result = mysqli_query($conn, $sql);

}
    echo '<table>';

?>
