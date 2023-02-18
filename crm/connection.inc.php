<?php
session_start();
$con=mysqli_connect("localhost","u509652120_qr_manager","Qr_manager123","u509652120_qr_manage");
define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'/');
define('SITE_PATH','https://graphiczoneqr.com/');
$qr_file_path="https://graphiczoneqr.com/a.php";
?>