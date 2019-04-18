<?php


session_start();
require_once 'classes/training.php';


$training = new training();

if(isset($_REQUEST['fileid']) && !empty($_REQUEST['fileid'])){
    $training->pk_id = $_REQUEST['fileid'];
}

$training->title = $_POST['title'];
$training->training_date = $_POST['training_date'];

$file = $training->save();

if ($file) {
    header("location: training_record.php");
} else {
    header("location: training_record.php");
}


