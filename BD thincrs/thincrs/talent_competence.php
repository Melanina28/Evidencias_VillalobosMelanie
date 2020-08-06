<?php
    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'talent_competence.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

    echo '<table border=1><tr><td>id</td><td>talent_id</td><td>competence_id</td><td>weight</td></tr>';

    for ($i = 2; $i<=$numRows; $i++){

        $id  = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $talent_id = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $competence_id = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
        $weight = $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
 
        
        

    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $talent_id.'</td>';
    echo '<td>'. $competence_id.'</td>';
    echo '<td>'. $weight.'</td>';
   

    echo '</tr>';


    $sql = "INSERT INTO talent_challenge (id,talent_id,challenge_id,weight) VALUES 
    ('$id','$talent_id','$competence_id','$weight')";
    $result = mysqli_query($conn, $sql);

}
    echo '<table>';

?>