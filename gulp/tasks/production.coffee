gulp   = require "gulp"
notify = require "gulp-notify"

gulp.task "deploy_static", ["copy_html", "copy_fonts"]
gulp.task "deploy_assets", ["images", "svg", "css-min", "js-min"]
