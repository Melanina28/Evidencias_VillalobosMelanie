<?php
    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'EvaCom.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

    echo '<table border=1><tr><td>id</td><td>competence_id</td><td>evaluation_id</td><td>weight</td></tr>';

    for ($i = 2; $i<=$numRows; $i++){

        $id  = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $competence_id = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $evaluation_id = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
        $weight = $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
       
    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $competence_id.'</td>';
    echo '<td>'. $evaluation_id.'</td>';
    echo '<td>'. $weight.'</td>';
    echo '</tr>';


    $sql = "INSERT INTO evaluation_competence (id, competence_id, evaluation_id, weight) VALUES 
    ('$id', '$competence_id', '$evaluation_id', '$weight')";
    $result = mysqli_query($conn, $sql);

}
    echo '<table>';

?>
