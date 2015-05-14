fs           = require "fs"
only_scripts = require "./util/script_filter"
tasks        = fs.readdirSync("./gulp/tasks/").filter(only_scripts)

tasks.forEach (task) ->
  require "./tasks/#{task}"
