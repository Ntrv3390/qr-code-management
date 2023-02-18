<?php
function pr($arr){
	echo '<pre>';
	print_r($arr);
}

function prx($arr){
	echo '<pre>';
	print_r($arr);
	die();
}

function get_safe_value($con,$str){
	if($str!=''){
		$str=trim($str);
		return mysqli_real_escape_string($con,$str);
	}
}

function redirect($link)
{
	?>
	<script>window.location.href='<?php echo $link; ?>';</script>
	<?php

}

function check_auth()
{
	if(!isset($_SESSION['QR_USER_LOGIN']))
	{
		redirect('login.php');
	}
}
function check_admin_auth()
{
	if($_SESSION['QR_USER_ROLE']!=0)
	{
		redirect('profile.php');
	}
}

function getCustomDate($date)
{
	if($date!='')
	{
		$date = strtotime($date);
		return date('d-M Y',$date);
	}
}

?>