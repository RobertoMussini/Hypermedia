<?php
	header('Access-Control-Allow-Origin: *');
	include('MySQL.php');
	$sql=new MysqlClass();
	//$courseLevelName=array('all levels', 'beginner', 'intermediate', 'advanced');
	
	
	if(isset($_GET['instructor'])){
		
		$info=$sql->estrai('instructors','id',$_GET['instructor']);
		if(is_array($info)) :
			$info=array_pop($info);
			
			?>
		
			<h1><?php echo(ucwords($info['name']).' '.ucwords($info['surname'])); ?></h1>
			<div class="underline"></div>
			<p><?php echo($info['description']); ?></p><hr />
			
			
			<?php
			
		else :
			echo('<h1>404: Instructor not found</h1>');
		endif;
		
	
	
	
	
	
	
	}elseif(isset($_GET['courses_of_ins'])){
		//get the ids of the courses held by the instructor
		$courses_ids=$sql->estrai("teaches",'instructor',$_GET['courses_of_ins'],'course');
		$courses=array();
		
		foreach($courses_ids as $val){
			$tmp=$sql->estrai('courses','id',$val['course']);
			if(is_array($tmp));
				$courses[]=array_pop($tmp);
		}
		echo(json_encode($courses));
		
		
		
		
		
		
	}elseif(isset($_GET['what']) && $_GET['what']=="instructors_of_course"){
		//get the ids of the courses held by the instructor
		$instructor_ids=$sql->estrai("teaches",'course',$_GET['course'],'instructor');
		$instructors=array();
		
		foreach($instructor_ids as $val){
			$tmp=$sql->estrai('instructors','id',$val['instructor']);
			if(is_array($tmp));
				$instructors[]=array_pop($tmp);
		}
		echo(json_encode($instructors));
		
		
		
		
		
		
	}else{
	
		$r='';
		$v='';
		//tutti in ordine alfabetico
		$instructors=$sql->estrai("instructors",$r,$v,'id,name,surname','order by name');
		echo(json_encode($instructors));
	}
	
	
?>