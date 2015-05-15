gulp   = require "gulp"
live_server = require "gulp-live-server"

config =
  path: "build"
  port: 1337

gulp.task "server", ->
  server = live_server.static(config.path, config.port)
  server.start()

  # use gulp.watch to trigger server actions(notify, start or stop)
  gulp.watch [
    "#{config.path}/**/*.css",
    "#{config.path}/**/*.html",
    "#{config.path}/**/*.js"], server.notify
