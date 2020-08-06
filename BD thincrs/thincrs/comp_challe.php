<?php
    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'comp_challe.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

    echo '<table border=1><tr><td>id</td><td>competence_id</td><td>challenge_id</td></tr>';

    for ($i = 2; $i<=$numRows; $i++){

        $id  = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $competence_id = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $challenge_id = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
        

    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $competence_id.'</td>';
    echo '<td>'. $challenge_id.'</td>';

    echo '</tr>';


    $sql = "INSERT INTO challenge_competence (id, competence_id, challenge_id) VALUES 
    ('$id', '$competence_id', '$challenge_id')";
    $result = mysqli_query($conn, $sql);

}
    echo '<table>';

?>
