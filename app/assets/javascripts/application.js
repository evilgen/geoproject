// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require leaflet
//= require leaflet.pm.min.js
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .


// options for leaflet.pm controls

var edit_options = {
    position: 'topleft', // toolbar position, options are 'topleft', 'topright', 'bottomleft', 'bottomright'
    drawMarker: false,  // adds button to draw markers
    drawPolygon: true,  // adds button to draw a polygon
    drawCircle: false,  // adds button to draw a circle
    drawPolyline: false,  // adds button to draw a polyline
    editPolygon: true,  // adds button to toggle global edit mode
    deleteLayer: true   // adds a button to delete layers
};
var draw_options = {
    position: 'topleft', // toolbar position, options are 'topleft', 'topright', 'bottomleft', 'bottomright'
    drawMarker: false,  // adds button to draw markers
    drawPolygon: true,  // adds button to draw a polygon
    drawCircle: false,  // adds button to draw a circle
    drawPolyline: false,  // adds button to draw a polyline
    editPolygon: false,  // adds button to toggle global edit mode
    deleteLayer: true   // adds a button to delete layers
};


