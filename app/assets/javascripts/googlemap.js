// document.addEventListener("turbolinks:load", function() {
//     // console.log('It works on each visit!');
    
// });
function initMap() {
        var uluru = {lat: 47.000436, lng: 30.338237};
        var map = new google.maps.Map(document.getElementById('map'), {
          center: uluru,
          zoom: 14
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }

