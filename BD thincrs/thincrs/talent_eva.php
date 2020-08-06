<?php
require 'Classes/PHPExcel/IOFactory.php';
require 'conexion.php';

$Excell = 'Talent_Eva_Ans.xlsx';

$objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
$objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
$numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

echo '<table border=1><tr><td>id</td><td>talent_id</td><td>talent_evaluation_competence_id</td><td>points</td><td>question_id</td><td>talent_answer</td><td>pending</td><td>question_category_id</td></tr>';

for ($i = 2; $i<=$numRows; $i++){
    
    $id = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
    $talent_id = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
    $talent_evaluation_competence_id = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
    $points = $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
    $question_id = $objPHPExcel->getActiveSheet()->getCell('E'.$i)->getCalculatedValue();
    $talent_answer_id = $objPHPExcel->getActiveSheet()->getCell('F'.$i)->getCalculatedValue();
    $pending = $objPHPExcel->getActiveSheet()->getCell('G'.$i)->getCalculatedValue();
    $question_category_id = $objPHPExcel->getActiveSheet()->getCell('H'.$i)->getCalculatedValue();


    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $talent_id.'</td>';
    echo '<td>'. $talent_evaluation_competence_id.'</td>';
    echo '<td>'. $points.'</td>';
    echo '<td>'. $question_id.'</td>';
    echo '<td>'. $talent_answer_id.'</td>';
    echo '<td>'. $pending.'</td>';
    echo '<td>'. $question_category_id.'</td>';
   
    echo '</tr>';


    $sql = "INSERT INTO talent_evaluation_answer (id, talent_id, talent_evaluation_competence_id, points,question_id, talent_answer_id,pending, question_category_id) VALUES 
    ('$id', '$talent_id', '$talent_evaluation_competence_id','$points','$question_id','$talent_answer_id', '$pending', '$question_category_id')";
    $result = mysqli_query($conn, $sql);

}
echo '<table>';


?>