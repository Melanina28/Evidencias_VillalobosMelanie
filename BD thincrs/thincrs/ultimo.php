<?php
  require 'Classes/PHPExcel/IOFactory.php';
  require 'conexion.php';

  $Excell = 'asa.xlsx';

  $objPHPExcel= PHPEXCEL_IOFactory::load($Excell);
  $objPHPExcel->setActiveSheetIndex(0); //la hoja de excell que trabajaremos
  $numRows = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();

  echo '<table border=1><tr><td>id</td><td>evaluation_category_feedback_id</td><td>flag</td><td>question_category_id</td></tr>';

  for ($i = 2; $i<=$numRows; $i++){
      $id= $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
      $evaluation_category_feedback_id  = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
      $flag = $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
      $question_category_id = $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
      


    echo '<tr>';
    echo '<td>'. $id.'</td>';
    echo '<td>'. $evaluation_category_feedback_id.'</td>';
    echo '<td>'. $flag.'</td>';
    echo '<td>'. $question_category_id.'</td>';
    echo '</tr>';

if ($question_category_id==7){
    $soure=39;
    $sql = "INSERT INTO evaluation_category_feedback_resource (id, evaluation_category_feedback_id, resource_id, flag) VALUES 
    ('$id', '$evaluation_category_feedback_id','$soure','$flag')";
    $result = mysqli_query($conn, $sql);
    


}else if($question_category_id==8){
    $soure=41;
    $sql = "INSERT INTO evaluation_category_feedback_resource (id, evaluation_category_feedback_id, resource_id, flag) VALUES 
    ('$id', '$evaluation_category_feedback_id','$soure','$flag')";
    $result = mysqli_query($conn, $sql);
    

}else if ($question_category_id==9){
    $soure=45;
    $sql = "INSERT INTO evaluation_category_feedback_resource (id, evaluation_category_feedback_id, resource_id, flag) VALUES 
    ('$id', '$evaluation_category_feedback_id','$soure','$flag')";
    $result = mysqli_query($conn, $sql);
    

}else if ($question_category_id==10){
    $soure=48;
    $sql = "INSERT INTO evaluation_category_feedback_resource (id, evaluation_category_feedback_id, resource_id, flag) VALUES 
    ('$id', '$evaluation_category_feedback_id','$soure','$flag')";
    $result = mysqli_query($conn, $sql);
    

}else if ($question_category_id==11){
    $soure=53;
    $sql = "INSERT INTO evaluation_category_feedback_resource (id, evaluation_category_feedback_id, resource_id, flag) VALUES 
    ('$id', '$evaluation_category_feedback_id','$soure','$flag')";
    $result = mysqli_query($conn, $sql);
    

}else if ($question_category_id==12){
    $soure=56;
    $sql = "INSERT INTO evaluation_category_feedback_resource (id, evaluation_category_feedback_id, resource_id, flag) VALUES 
    ('$id', '$evaluation_category_feedback_id','$soure','$flag')";
    $result = mysqli_query($conn, $sql);
    

}else if ($question_category_id==13){
    $soure=61;
    $sql = "INSERT INTO evaluation_category_feedback_resource (id, evaluation_category_feedback_id, resource_id, flag) VALUES 
    ('$id', '$evaluation_category_feedback_id','$soure','$flag')";
    $result = mysqli_query($conn, $sql);
    

}

}
    echo '<table>';

?>
