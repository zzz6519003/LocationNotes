
// A $( document ).ready() block.
$( document ).ready(function() {

	var map = L.map('map').setView([51.505, -0.09], 13);
	
	function onMapClick(e) {
	    alert("You clicked the map at " + e.latlng);
	}

	map.on('click', onMapClick);



	L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

	// add a marker in the given location, attach some popup content to it and open the popup
	L.marker([51.5, -0.09]).addTo(map)
	    .bindPopup('A pretty CSS3 popup. <br> Easily customizable.')
	    .openPopup();


});