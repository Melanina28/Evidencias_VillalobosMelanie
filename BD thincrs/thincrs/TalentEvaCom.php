<?php
    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'TalentEvaCom.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

    echo '<table border=1><tr><td>id</td><td>talent_id</td><td>evaluation_competence_id</td><td>level_id</td><td>weight</td><td>extra</td></tr>';

    for ($i = 2; $i<=$numRows; $i++){

        $id  = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $talent_id = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $evaluation_competence_id = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
        $level_id = $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
        $weight = $objPHPExcel->getActiveSheet()->getCell('E'.$i)->getCalculatedValue();
        $extra = $objPHPExcel->getActiveSheet()->getCell('Fs'.$i)->getCalculatedValue();
        
    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $talent_id.'</td>';
    echo '<td>'. $evaluation_competence_id.'</td>';
    echo '<td>'. $level_id.'</td>';
    echo '<td>'. $weight.'</td>';
    echo '<td>'. $extra.'</td>';
    echo '</tr>';


    $sql = "INSERT INTO evaluation_competence (id, talent_id, evaluation_competence_id, level_id, weight, extra ) VALUES 
    ('$id', '$talent_id', '$evaluation_competence_id', '$level_id', '$weight', '$extra')";
    $result = mysqli_query($conn, $sql);

}
    echo '<table>';

?>
