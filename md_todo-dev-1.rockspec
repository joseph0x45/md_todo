package = "md_todo"
version = "dev-1"
source = {
   url = "git+https://github.com/thewisepigeon/md_todo.git"
}
description = {
   homepage = "https://github.com/thewisepigeon/md_todo",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      md_todo = "lua/md_todo.lua"
   }
}
