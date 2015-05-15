gulp      = require "gulp"
notify    = require "gulp-notify"
image_min = require "gulp-imagemin"
cache     = require "gulp-cache"
svg_min   = require "gulp-svgmin"
plumber   = require "gulp-plumber"

gulp.task "images", ->
  gulp.src "static/images/**/*.{jpg,gif,png}"
    .pipe cache( image_min(optimizationLevel: 3, progressive: true, interlaced: true) )
    .pipe gulp.dest("build/images")
    .pipe cache.clear()
    .pipe notify(message: "Images smushed!")

# Minify your SVG.
gulp.task "svg", ->
  gulp.src "static/vectors/**/*.svg"
    .pipe svg_min()
    .pipe gulp.dest "build/vectors"
    .pipe notify(message: "SVG smushed!")
