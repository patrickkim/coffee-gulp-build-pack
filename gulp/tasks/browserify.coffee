gulp       = require "gulp"
notify     = require "gulp-notify"
browserify = require "gulp-browserify"
concat     = require "gulp-concat"
plumber    = require "gulp-plumber"
uglify     = require "gulp-uglify"

source_path         = "./src/javascripts/index.coffee"
transformations     = ["coffeeify"]
accepted_extensions = [".coffee"]
required_packages   = ["lodash", "immutable", "moment"]

gulp.task "js", ->
  gulp.src source_path, { read: false }
    .pipe plumber()
    .pipe browserify(
      debug: true
      transform: transformations
      extensions: accepted_extensions
      requires: required_packages)
    .pipe concat("app.js")
    .pipe gulp.dest("build/js")
    .pipe notify(message: "JS [DEVELOPMENT]")

gulp.task "js-min", ->
  gulp.src source_path, { read: false }
    .pipe browserify(
      debug: true
      transform: transformations
      extensions: accepted_extensions
      requires: required_packages)
    .pipe concat("app.js")
    .pipe uglify()
    .pipe gulp.dest("build/js")
    .pipe notify(message: "JS [PRODUCTION] ready!")
