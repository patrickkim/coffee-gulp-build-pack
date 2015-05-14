gulp         = require "gulp"
notify       = require "gulp-notify"
sourcemaps   = require "gulp-sourcemaps"
rename       = require "gulp-rename"
stylus       = require "gulp-stylus"
jeet         = require "jeet"
autoprefixer = require "gulp-autoprefixer"
uglify       = require "gulp-uglify"
plumber      = require "gulp-plumber"
gzip         = require "gulp-gzip"

source_path = "src/stylesheets/app.styl"

gulp.task "css",  ->
  gulp.src source_path
    .pipe sourcemaps.init()
    .pipe plumber()
    .pipe stylus(use: [jeet()], define: {"$ENV": "development"})
    .pipe autoprefixer("last 2 version", "ie 9")
    .pipe sourcemaps.write()
    .pipe rename("app.css")
    .pipe gulp.dest("build/css")
    .pipe notify(message: "CSS [DEVELOPMENT] complete")

gulp.task "css-min", ->
  gulp.src "src/stylesheets/app.styl"
    .pipe stylus(use: [jeet()], define: {"$ENV": "production"}, compress: true)
    .pipe autoprefixer("last 2 version", "safari 5", "ie 8", "ie 9", "opera 12.1", "ios 6", "android 4")
    .pipe rename("app.css")
    .pipe gzip()
    .pipe gulp.dest("build/css")
    .pipe notify(message: "CSS [PRODUCTION] complete")
