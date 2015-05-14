gulp  = require "gulp"

# Run watch to compile with browserify
gulp.task "development", ["build", "watch"]
gulp.task "build", ["copy_static", "css", "js"]
