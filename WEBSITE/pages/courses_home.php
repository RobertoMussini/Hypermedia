<div class="normalBlock" style="padding-bottom:0px;">
	<h1>Welcome to our courses!</h1>
	<div class="underline"></div>
	<p>
		Where our only goal is to help you realize yours. Join your nearest MegaGym today to get stronger with every workout, every training session and every class.
	</p>
	<hr />
	<a href="index.php?p=courses_alpha"><button class="justAButton wow bounceIn">All courses by name</button></a>
	<a href="index.php?p=courses_by_level"><button class="justAButton wow bounceIn" data-wow-delay=".2s">All courses by level</button></a>
	<a href="index.php?p=courses_by_category"><button class="justAButton wow bounceIn" data-wow-delay=".4s">All courses by category</button></a>
	
	<hr><hr />
	
	
	<?php
	
		//include("../MySql.php");
		//$sql= new MysqlClass();
		
		$categories=$sql->estrai("categories");
		$c=0;
		
		foreach($categories as $k=>$v){
			$imgurl=str_replace(' ','%20',$v['name']);
			
			
			echo('<div class="category_image" style="background-image:url(./img/course%20categories/'.$imgurl.'.jpg);"><div>'.ucwords($v['name']).'</div></div>');
			$c++;
		}
		
	?>
	
</div>
