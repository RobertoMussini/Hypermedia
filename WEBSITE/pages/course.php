<div class="normalBlock" style="margin-bottom:0px;">
	<?php
		$info=$sql->estrai('courses','id',$_GET['course']);
		if(is_array($info)) :
		$info=array_pop($info);
			
	?>

	<h1><?php echo(ucwords($info['name']).' course - '.$info['level']); ?></h1>
	<div class="underline"></div>
	<p><?php echo($info['description']); ?></p><hr />
	
	<button class="wow bounceIn">Enroll now!</button>
	
	
	<?php
		else :
			echo('<h1>404: Course not found</h1>');
		endif;
	?>
</div>