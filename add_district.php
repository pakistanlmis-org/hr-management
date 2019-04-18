<?php

session_start();
require_once 'classes/district.php';
require_once 'classes/datetime.php';

$district = new district();

if(isset($_REQUEST['districtid']) && !empty($_REQUEST['districtid'])){
    $district->pk_id = $_REQUEST['districtid'];
}

$district->location_name = $_POST['location_name'];
$district->lvl = $_POST['lvl'];
$district->parent_id = 3;

$file = $district->save();

if ($file) {
    header("location: districts.php");
} else {
    header("location: districts.php");
}