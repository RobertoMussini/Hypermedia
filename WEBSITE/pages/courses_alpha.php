<div class="normalBlock" style="margin-bottom:0px;">
	<h1>Welcome to our courses!</h1>
	<div class="underline"></div>
	<p>Here you can find all our courses organized in alphabetical order. Pick one and start your journey towards physical wellness!</p>
	
	<hr>
	
		<?php
			//include('../MySQL.php');
			//$sql=new MysqlClass();
			
			$courses=$sql->estrai("courses",'','','DISTINCT name','order by name');
			
			foreach($courses as $v):
			
		?>
		
		<div class="service-box" style="height:200px;">
			<div>
				<!--a class="fa fa-4x fa-diamond wow bounceIn text-primary" href="index2.php?p=equipment"></a-->
				<h3><?php echo(ucwords($v['name'])); ?></h3>
				<?php
					$levels=$sql->estrai("courses",'name',$v['name']);
					foreach($levels as $l):
				?>
				<a href="index.php?p=course&course=<?php echo($l['id']); ?>">
					<?php
						echo($l['level']);
					?>
				</a><br />
				
				<?php endforeach; ?>
				
			</div>
		</div>
		
		<?php endforeach ?>
		
</div>