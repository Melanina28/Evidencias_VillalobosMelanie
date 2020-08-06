<?php
    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'EvaQues.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(1)->getHighestRow();

    echo '<table border=1><tr><td>id</td><td>evaluation_id</td><td>question_id</td></tr>';

    for ($i = 2; $i<=$numRows; $i++){

        $id  = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $evaluation_id = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $question_id = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
       
    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $evaluation_id.'</td>';
    echo '<td>'. $question_id.'</td>';
    echo '</tr>';


    $sql = "INSERT INTO evaluation_question (id, evaluation_id, question_id ) VALUES 
    ('$id', '$evaluation_id', '$question_id')";
    $result = mysqli_query($conn, $sql);

}
    echo '<table>';

?>
