<?php

require_once 'classes/specialities.php';
$speciality = new speciality();
$speciality->pk_id = $_GET['id'];
$res = $speciality->delete();

if ($res) {
    header("location: specialities_record.php");
} else {
    header("location: specialities_record.php");
}