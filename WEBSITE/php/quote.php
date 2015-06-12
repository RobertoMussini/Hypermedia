<?php
	header('Access-Control-Allow-Origin: *');
	include('MySQL.php');
	$sql=new MysqlClass();
	$hand=$sql->random("quotes");
	echo(utf8_encode($hand['quote'].'<br><br>- '.ucwords($hand['name'])));
?>