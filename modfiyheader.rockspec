package = "modifyheader"
version = "1.0-3"

source = {
  url = "https://github.com/SuganyaGB/CustomizedKONGPlugin.git"
}

description = {
  summary = "set the header value on the service level",
  license = "MIT"
}

dependencies = {
  "lua ~> 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.CustomizedKONGPlugin.handler"] = "handler.lua",
    ["kong.plugins.CustomizedKONGPlugin.schema"] = "schema.lua",
  }
}
