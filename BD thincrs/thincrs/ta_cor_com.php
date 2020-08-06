
<?php
    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'talent_course_competence.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

    echo '<table border=1><tr><td>id</td><td>talent_id</td><td>course_id</td><td>points</td></tr>';

    for ($i = 2; $i<=$numRows; $i++){

        $id  = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $talent_id = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $course_id = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
        $points = $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
 
        
        

    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $talent_id.'</td>';
    echo '<td>'. $course_id.'</td>';
    echo '<td>'. $points.'</td>';
    echo '</tr>';

    if (){

        $sql = "INSERT INTO talent_course_competence (id,talent_id,competence_id,weight) VALUES 
        ('$id','$talent_id','$competence_id','$weight')";
        $result = mysqli_query($conn, $sql);

    }


}
    echo '<table>';

?>