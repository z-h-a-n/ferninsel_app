var GoogleMap = GoogleMap || {};

GoogleMap.createMarker = function(island) {
  var Latlng = new google.maps.LatLng(island.latitude, island.longitude);

  new google.maps.Marker({
    position: Latlng,
    map: GoogleMap.map,
    title: 'Hello World!'
  });

  return this;
}

GoogleMap.fetchIslands = function(id) {
  $.ajax({
    type: "GET",
    url: "/users/"+id+".json"
  }).done(function(data){
    $.each(data, function(index, island){
      GoogleMap.createMarker(island);
    })
  });
}

GoogleMap.initialize = function(id) {
  var mapContainer = document.getElementById('map-canvas');
  var Latlng = new google.maps.LatLng(-15.95, -5.716667);
  var mapOptions = {
    zoom: 3,
    center: Latlng,
    styles: [{"featureType":"administrative","elementType":"all","stylers":[{"saturation":"0"},{"visibility":"off"}]},{"featureType":"administrative","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"labels.text","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"color":"#444444"}]},{"featureType":"administrative.country","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"administrative.land_parcel","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"landscape","elementType":"all","stylers":[{"visibility":"on"},{"saturation":"-100"},{"hue":"#ff0000"},{"gamma":"1"},{"weight":"1"}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"visibility":"on"}]},{"featureType":"landscape","elementType":"geometry.fill","stylers":[{"visibility":"on"}]},{"featureType":"landscape","elementType":"geometry.stroke","stylers":[{"visibility":"off"}]},{"featureType":"landscape","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"landscape","elementType":"labels.text","stylers":[{"visibility":"on"}]},{"featureType":"landscape","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"landscape.man_made","elementType":"all","stylers":[{"visibility":"off"},{"hue":"#ff0000"}]},{"featureType":"landscape.natural","elementType":"all","stylers":[{"visibility":"on"}]},{"featureType":"landscape.natural","elementType":"geometry","stylers":[{"hue":"#ff0000"}]},{"featureType":"landscape.natural.terrain","elementType":"all","stylers":[{"visibility":"on"},{"weight":"0.01"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"all","stylers":[{"saturation":-100},{"lightness":45},{"visibility":"off"}]},{"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"all","stylers":[{"visibility":"on"},{"color":"#54ff9f"},{"saturation":"-0"},{"lightness":"10"},{"gamma":"1"},{"weight":"1"}]},{"featureType":"water","elementType":"geometry","stylers":[{"lightness":"60"}]}]
  }

  GoogleMap.map = new google.maps.Map(mapContainer, mapOptions);
  GoogleMap.fetchIslands(id);
}