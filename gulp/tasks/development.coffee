gulp = require "gulp"

gulp.task "development", ["build"], ->
  gulp.start "watch", "server"

gulp.task "build", ["clean"], ->
  gulp.start "copy_static", "images", "css", "js"
