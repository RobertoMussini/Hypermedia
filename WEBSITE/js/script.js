// JavaScript Document
var onlineResource='http://www.nikestudio.altervista.org';
var courseLevelName=['all levels', 'beginner', 'intermediate', 'advanced'];


function getUrlParameter(sParam)
{
    var sPageURL = window.location.search.substring(1);
    var sURLVariables = sPageURL.split('&');
    for (var i = 0; i < sURLVariables.length; i++) 
    {
        var sParameterName = sURLVariables[i].split('=');
        if (sParameterName[0] == sParam) 
        {
            return sParameterName[1];
        }
    }
}


control=0;
$( window ).scroll(function() {
	var sc=$(window).scrollTop();
	

	if(sc>60 && control==0){
		$('#menu').stop().animate({
			backgroundColor:"#fff",
			borderColor:"#eee"
		},200);
		$('#menu #logo').stop().animate({
			color:"#000"
		},200);
		
		$("#menu").addClass("menu-a-highlight");
		control=1;
	}else if(sc<=60 && control==1){
		$('#menu').stop().animate({
			backgroundColor:"#222",
			borderColor:"#222"
		},200);
		$('#menu #logo').stop().animate({
			color:"#fff"
		},200);
		$("#menu").removeClass("menu-a-highlight");
		control=0;
	}
	
	
	$(".underline").each(function(){
		var w = (($(window).height()-30) - ($(this).offset().top - sc))/2.5;
		if(w<0)
			w=0;
		else if(w>100)
			w=100;
		
		$(this).width(w);
	});
	
});

$(window).ready(function(e) {
	var sc=$(window).scrollTop();
	$(".underline").each(function(){
		var w = (($(window).height()-30) - ($(this).offset().top - sc))/2.5;
		if(w<0)
			w=0;
		else if(w>100)
			w=100;
		
		$(this).width(w);
	});
	
	
	$.get(onlineResource+'/php/quote.php', function(data) {
		$('#random_quote').html(data);
	});
	
	var page = getUrlParameter('p');
	if(page==undefined)
		page="home";
	
	$.get('./pages/'+page+'.html', function(data) {
		$('#main').html(data);
	});
	
});