$ ->

  handler = Gmaps.build("Google")
  handler.buildMap
    provider: {}
    internal:
      id: "map"
  , ->
    markers_json = $('#map').data('markers')
    markers = handler.addMarkers(markers_json)

    #markers = handler.addMarkers([
    #  lat: 0
    #  lng: 0
    #  picture:
    #    url: "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png"
    #    width: 36
    #    height: 36
  
    #  infowindow: "hello!"
    #])
    
    handler.bounds.extendWith markers
    handler.fitMapToBounds()


