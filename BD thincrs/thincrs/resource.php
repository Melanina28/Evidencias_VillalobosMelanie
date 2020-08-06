<?php
    require 'Classes/PHPExcel/IOFactory.php';
    require 'conexion.php';

    $Excell = 'resource.xlsx';

    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

    echo '<table border=1><tr><td>id</td><td>name</td><td>url</td></tr>';

    for ($i = 2; $i<=$numRows; $i++){

        $id  = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $name = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $url = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
 
    
        

    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $name.'</td>';
    echo '<td>'. $url.'</td>';
    echo '<td>'. $lenguaje.'</td>';
   

    echo '</tr>';


    $sql = "INSERT INTO resource (id,name, url) VALUES 
    ('$id','$name','$url')";
    $result = mysqli_query($conn, $sql);

}
    echo '<table>';

?>