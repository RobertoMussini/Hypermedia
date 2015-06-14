<script type='text/javascript'>
		function initialize() {
			var mapOptions = {
				center: { lat: 27.988056, lng: 86.95278},
				mapTypeId: 'hybrid',
				zoom: 11,
				scrollwheel: false,
				draggable: true,
				disableDefaultUI: true,
				zoomControl: true,
				zoomControlOptions: {
					position: google.maps.ControlPosition.LEFT_CENTER
				}
			};

			var map = new google.maps.Map(document.getElementById('map-canvas'),mapOptions);
			
			var marker = new google.maps.Marker({
				position: new google.maps.LatLng(27.988056, 86.925278),
				map: map,
				icon: 'img/map_pointer.png',
				title: 'MegaGym'
			});
		}
		google.maps.event.addDomListener(window, 'load', initialize);
</script>
<div class="imageAndText">
	<div>
		<h1>OUR LOCATION</h1>
	</div>
</div>



<div class="normalBlock">
	<h1>Here we are!</h1>
	<div class="underline"></div>
	<p>
		Our gym is located right on top of the peak of Mount Everest to guarantee our costumers the maximum solitude and provide them the necessary concentration to achieve their ultimate fitness goals.
	</p>
</div>

<div id="map-canvas"></div>