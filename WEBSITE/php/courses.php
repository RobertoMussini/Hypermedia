<?php
	header('Access-Control-Allow-Origin: *');
	include('MySQL.php');
	$sql=new MysqlClass();
	$courseLevelName=array('all levels', 'beginner', 'intermediate', 'advanced');
	
	if(isset($_GET['home']) && $_GET['home']=='yes'){
		$categories=$sql->estrai("categories");
		$c=0;
		echo('<table cellpadding="0" cellspacing="0" id="category_image_table"><tr>');
		foreach($categories as $k=>$v){
			$imgurl=str_replace(' ','%20',$v['name']);
			echo('<td style="background-image:url(./img/course%20categories/'.$imgurl.'.jpg);">
				<a href="index.html?p=course_category&category='.$v['id'].'"><div class="category_image"><div>'.ucwords($v['name']).'</div></div></a>
			</td>');
			if($c==2){
				echo('</tr><tr>');
			}
			$c++;
		}
		echo('</tr></table>');
		
		
		
		
		
		
	}elseif(isset($_GET['course'])){
		
		$info=$sql->estrai('courses','id',$_GET['course']);
		if(is_array($info)) :
		$info=array_pop($info);
			
	?>

	<h1><?php echo(ucwords($info['name']).' - '.$courseLevelName[$info['level']]); ?></h1>
	<div class="underline"></div>
	<p><?php echo($info['description']); ?></p><hr />
	
	
	<?php
		else :
			echo('<h1>404: Course not found</h1>');
		endif;
		
	
	
	
	
	
	
	}elseif(isset($_GET['category'])){
		
		$info=$sql->estrai('categories','id',$_GET['category']);
		if(is_array($info)) :
			$info=array_pop($info);
			
			?>
		
			<h1><?php echo(ucwords($info['name'])); ?></h1>
			<div class="underline"></div>
			<p><?php echo($info['description']); ?></p><hr />
			
			
			<?php
				else :
					echo('<h1>404: Category not found</h1>');
		endif;
		
	
	
	
	
	
	
	}else{
		$r='';
		$v='';
		if(isset($_GET['cat'])){
			$r='category';
			$v=$_GET['cat'];
		}
		//tutti in ordine alfabetico
		$courses=$sql->estrai("courses",$r,$v,'id,name,category,level','order by name');
		$categories=$sql->estrai("categories",'','','id,name','','','',1);
		foreach($courses as $k => $c){
			$courses[$k]['category_name']=$categories[$c['category']]['name'];
		}
		echo(json_encode($courses));
	}
	
	
?>