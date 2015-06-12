var data=[];
$(window).ready(function(e) {
	$.getJSON(onlineResource+'/php/courses.php', function(h) {
		data=h;
	});
	
});


function getContent(order){
	var content="";
	var lastName='';
	var first=true;
	var support=[];
	
	if(order=='alpha'){
		
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
		
	}else if(order=='level'){
		
		data.sort(function(a, b) {
			var aName = a.name.toLowerCase();
			var bName = b.name.toLowerCase(); 
			return ((aName < bName) ? -1 : ((aName > bName) ? 1 : 0));
		});
		
		data.sort(function(a, b) {
			var aName = a.level;
			var bName = b.level; 
			return ((aName < bName) ? -1 : ((aName > bName) ? 1 : 0));
		});
		
		$.each( data, function( key, val ) {
			if(val['level']!=lastName){
				if(!first)
					content+='</div></div>';
				content+='<div class="service-box animated bounceInLeft"><div><h3>'+courseLevelName[val['level']]+'</h3>';
				lastName=val['level'];
			}
			content+='<a href="index.html?p=course&course='+val['id']+'">'+val['name']+'</a><br>';
		
			
			
			
			first=false;
		});
		content+='</div></div>';
		
		
	}else if(order=='category'){
		
		data.sort(function(a, b) {
			var aName = a.name.toLowerCase();
			var bName = b.name.toLowerCase(); 
			return ((aName < bName) ? -1 : ((aName > bName) ? 1 : 0));
		});
		
		data.sort(function(a, b) {
			var aName = a.category_name.toLowerCase();
			var bName = b.category_name.toLowerCase();
			return ((aName < bName) ? -1 : ((aName > bName) ? 1 : 0));
		});
		
		$.each( data, function( key, val ) {
			if(val['category_name']!=lastName){
				if(!first)
					content+='</div></div>';
				content+='<div class="service-box animated bounceInLeft"><div><h3>'+val['category_name']+'</h3>';
				lastName=val['category_name'];
			}
			content+='<a href="index.html?p=course&course='+val['id']+'">'+val['name']+' - '+courseLevelName[val['level']]+'</a><br>';
		
			
			
			
			first=false;
		});
		content+='</div></div>';
		
		
	}
	
	
	
	
	return content;
}

var whatShowing='';

function showContent(order){
	if(whatShowing!=''){
		if(order!=whatShowing){
			$('.service-box').removeClass('bounceInLeft').addClass('bounceOutRight');
			setTimeout(function(){ $('#content_container').html(getContent(order)); },500);
			whatShowing=order;
		}
	}else{
		$('#content_container').html(getContent(order));
		whatShowing=order;
	}
}