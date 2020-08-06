<?php
    require 'Classes/PHPExcel/IOFactory.php';

    //El nombre mi documento Excell
    $Excell = 'cursos.xlsx';


    $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
    $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
    // Aqui le digo en que pagina del excell quiero que lea
    $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

    //barrer los datos de cada columna de la a ....hasta donde este definido el excell
    for ($i = 2; $i<=$numRows; $i++){

        $id  = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
        $admin_id = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
        $name = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
        $description = $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
        $summary = $objPHPExcel->getActiveSheet()->getCell('E'.$i)->getCalculatedValue();
        $course_type_id = $objPHPExcel->getActiveSheet()->getCell('F'.$i)->getCalculatedValue();
        $category_id = $objPHPExcel->getActiveSheet()->getCell('G'.$i)->getCalculatedValue();

        //Aqui hago la inserción de dichos datos capturados en el docuemto excell
    $sql = "INSERT INTO course (id, admin_id, name, description, summary, course_type_id, category_id) VALUES 
     ('$id', '$admin_id', '$name', '$description', '$summary', '$course_type_id', '$category_id')";
     $result = mysqli_query($conn, $sql);

}
    ?>
