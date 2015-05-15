gulp = require "gulp"
del  = require "del"

gulp.task "clean", (call_back) ->
  del(["build/*"], call_back)
