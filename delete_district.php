<?php

require_once 'classes/district.php';

$district = new district();
$district->pk_id = $_REQUEST['id'];
$res = $district->delete();


if ($res) {
    header("location: districts.php");
} else {
    header("location: districts.php");
}