<div class="normalBlock" style="margin-bottom:0px;">
	<h1>Welcome to our courses!</h1>
	<div class="underline"></div>
	<p>Here you can find all our courses organized by level. Pick one and start your journey towards physical wellness!</p>
	
	<hr>
	
		<?php
			//include('../MySQL.php');
			//$sql=new MysqlClass();
			
			$levels=array('all levels','beginner','intermediate','advanced');
			
			foreach($levels as $v):
			
		?>
		
		<div class="service-box" style="height:200px;">
			<div>
				<!--a class="fa fa-4x fa-diamond wow bounceIn text-primary" href="index2.php?p=equipment"></a-->
				<h3><?php echo(ucwords($v)); ?></h3>
				<?php
					$courses=$sql->estrai("courses",'level',$v,'*','order by name');
					foreach($courses as $c):
				?>
				<a href="index.php?p=course&course=<?php echo($c['id']); ?>">
					<?php
						echo($c['name']);
					?>
				</a><br />
				
				<?php endforeach; ?>
				
			</div>
		</div>
		
		<?php endforeach ?>
		
</div>