gulp = require "gulp"

gulp.task "watch", ->
  gulp.watch "src/javascripts/**", [ "js" ]
  gulp.watch "src/stylesheets/**", [ "css" ]
  gulp.watch "static/images/**", [ "images" ]
  gulp.watch "static/fonts/**", [ "copy_fonts" ]
  gulp.watch "static/vendor/**", [ "copy_vendor" ]
  gulp.watch "static/*.html", [ "copy_html" ]
