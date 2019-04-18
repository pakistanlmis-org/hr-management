<?php

require_once 'classes/user.php';

$user = new user();
$user->pk_id = $_REQUEST['id'];
$res = $user->delete();

if ($res) {
    header("location: users.php");
} else {
    header("location: users.php");
}