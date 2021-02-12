/* global $*/
$(document).on('click','#photopostbutton', function() {
   $('#photopost').toggle('slow');
});

/* global Vue*/
var app = new Vue({
    el: "#app",
    data: {
        message: 'Hello Vue.js'
    }
});

