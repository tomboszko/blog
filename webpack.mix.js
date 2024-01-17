const mix = require('laravel-mix');

mix.js('resources/js/app.js', 'public/js')
   .css('resources/css/styles.css', 'public/css');

   mix.css('resources/css/vendor.css', 'public/css');