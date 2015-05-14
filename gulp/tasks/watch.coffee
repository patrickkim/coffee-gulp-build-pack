gulp = require "gulp"

gulp.task "watch", ->
  plugins.livereload.listen();
  gulp.watch "src/javascripts/**", [ "js" ]
  gulp.watch "src/stylesheets/**", [ "css" ]
  gulp.watch "static/fonts/**", [ "copy_fonts" ]
  gulp.watch "static/images/**", [ "copy_image" ]
  gulp.watch "static/vendor/**", [ "copy_vendor" ]
