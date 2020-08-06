<?php
    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'answer.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

    echo '<table border=1><tr><td>id</td><td>question_id</td><td>qualification</td></tr>';

    for ($i = 2; $i<=$numRows; $i++){

        $id  = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $question_id = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $qualification = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
    


    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $question_id.'</td>';
    echo '<td>'. $qualification.'</td>';
   
    echo '</tr>';


    $sql = "INSERT INTO answer (id, question_id, qualification) VALUES 
    ('$id', '$question_id', '$qualification')";
    $result = mysqli_query($conn, $sql);

}
    echo '<table>';

?>
