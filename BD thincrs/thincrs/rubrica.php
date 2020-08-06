<?php
    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'rubrica.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

    echo '<table border=1><tr><td>id</td><td>name</td><td>admin_id</td></tr>';

    for ($i = 2; $i<=$numRows; $i++){

        $id  = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $name = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $admin_id = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
       
    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $name.'</td>';
    echo '<td>'. $admin_id.'</td>';
    echo '</tr>';


    $sql = "INSERT INTO rubric (id, name ,admin_id ) VALUES 
    ('$id', '$name','$admin_id' )";
    $result = mysqli_query($conn, $sql);

}
    echo '<table>';

?>
