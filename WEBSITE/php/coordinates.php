<?php
	header('Access-Control-Allow-Origin: *');
	include('MySQL.php');
	$sql=new MysqlClass();
	$info=$sql->estrai('coordinates','id',1);
	if(is_array($info))
		echo(json_encode(array_pop($info)));
	
?>