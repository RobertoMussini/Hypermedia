<?php
	header('Access-Control-Allow-Origin: *');
	include('MySQL.php');
	$sql=new MysqlClass();
	if(isset($_GET['p'])){
		$hand=$sql->estrai("texts",'page',$_GET['p']);
		if(is_array($hand));
			echo(json_encode(array_pop($hand)));
	}
?>