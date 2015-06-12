
function getData(what,where){
	$.getJSON(onlineResource+'/php/instructors.php?what='+what, function(data) {
		showContent(data,where);
	});
}

function UrlExists(url){
    var http = new XMLHttpRequest();
    http.open('HEAD', url, false);
    http.send();
    return http.status!=404;
}

function imageExist(id) {
	var url=onlineResource+'/img/instructors/'+id+'.png';
	if(UrlExists(url)){
		return ' style="background-image:url('+url+');"';
	}
	url=onlineResource+'/img/instructors/'+id+'.jpg';
	if(UrlExists(url)){
		return ' style="background-image:url('+url+');"';
	}
	url=onlineResource+'/img/instructors/'+id+'.jpeg';
	if(UrlExists(url)){
		return ' style="background-image:url('+url+');"';
	}
	return '';
}

function showContent(data,where){	
	
	var content="";
	
		
		data.sort(function(a, b) {
			var aName = a.name.toLowerCase();
			var bName = b.name.toLowerCase(); 
			return ((aName < bName) ? -1 : ((aName > bName) ? 1 : 0));
		});
		
		$.each( data, function( key, val ) {
			
			content+='<div class="service-box animated wow bounceInLeft"><div><center><div class="instructor_pic"'+imageExist(val['id'])+'></div><br><a class="instructor_pic_link" href="index.html?p=instructor&instructor='+val['id']+'">'+val['name']+' '+val['surname']+'</a></center></div></div>';
			
		});
		
	
	$('#'+where).html(content);
}