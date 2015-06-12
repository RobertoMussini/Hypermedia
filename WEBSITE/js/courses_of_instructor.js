var data=[];
var instructor = getUrlParameter('instructor');

$(window).ready(function(e) {
	
	$.getJSON(onlineResource+'/php/instructors.php?courses_of_ins='+instructor, function(h) {
		data=h;
		showContent();
	});
	
	$.get(onlineResource+'/php/instructors.php?instructor='+instructor, function(h) {
			$('#content_container_ins').html(h);
	});
	
});


function getContent(){
	var content="";
	var lastName='';
	var first=true;
	var support=[];
	
		
		data.sort(function(a, b) {
			var aName = a.name.toLowerCase();
			var bName = b.name.toLowerCase(); 
			return ((aName < bName) ? -1 : ((aName > bName) ? 1 : 0));
		});
		
		$.each( data, function( key, val ) {
			if(val['name']!=lastName){
				if(!first)
					content+='</div></div>';
				content+='<div class="service-box animated bounceInLeft"><div><h3>'+val['name']+'</h3>';
				lastName=val['name'];
			}
			content+='<a href="index.html?p=course&course='+val['id']+'">'+courseLevelName[val['level']]+'</a><br>';
			
			first=false;
		});
		content+='</div></div>';
		
	
	
	
	
	
	return content;
}

var whatShowing='';

function showContent(){
	$('#content_container').html(getContent());
}