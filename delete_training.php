<?php

require_once 'classes/training.php';
$training = new training();
$training->pk_id = $_GET['id'];
$res = $training->delete();

if ($res) {
    header("location: training_record.php");
} else {
    header("location: training_record.php");
}
