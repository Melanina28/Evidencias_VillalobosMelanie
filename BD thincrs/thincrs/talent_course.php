<?php
require 'Classes/PHPExcel/IOFactory.php';
require 'conexion.php';

$Excell = 'tale_course_real.xlsx';

$objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
$objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
$numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

echo '<table border=1><tr><td>id</td><td>talent_id</td><td>course_id</td><td>points</td><td>level</td><td>status</td></tr>';

for ($i = 2; $i<=$numRows; $i++){

    $id  = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
    $talent_id = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
    $course_id = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
    $points = $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
    $level =  $objPHPExcel->getActiveSheet()->getCell('E'.$i)->getCalculatedValue();
    $status =     $objPHPExcel->getActiveSheet()->getCell('F'.$i)->getCalculatedValue();
    
    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $talent_id.'</td>';
    echo '<td>'. $course_id.'</td>';
    echo '<td>'. $points.'</td>';
    echo '<td>'. $level.'</td>';
    echo '<td>'. $status.'</td>';
    echo '</tr>';


    $sql = "INSERT INTO talent_course (id, talent_id, course_id, points, level, status) VALUES 
    ('$id', '$talent_id', '$course_id', '$points', '$level', '$status')";
    $result = mysqli_query($conn, $sql);

}
echo '<table>';



?>