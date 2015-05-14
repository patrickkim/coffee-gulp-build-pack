gulp   = require "gulp"

gulp.task "copy_html", ->
  gulp.src "static/**/*.html"
    .pipe gulp.dest("build")

gulp.task "copy_fonts", ->
  gulp.src "static/fonts/**/*.{ttf,woff,eof,svg}"
    .pipe gulp.dest("build/fonts")

gulp.task "copy_vendor", ->
  gulp.src "static/vendor/**/*"
    .pipe gulp.dest("build/vendor")

gulp.task "copy_static", ["copy_html", "copy_fonts", "copy_vendor"]
