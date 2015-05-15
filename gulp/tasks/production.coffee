gulp   = require "gulp"
# fingerprint = require "gulp-fingerprint"

gulp.task "deploy_static", ["copy_static"]
gulp.task "deploy_assets", ["images", "svg", "css-min", "js-min"]

gulp.task "deploy", ["clean"], ->
  gulp.start "deploy_static", "deploy_assets", "server"
