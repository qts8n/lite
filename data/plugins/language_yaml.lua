local syntax = require "core.syntax"

syntax.add {
  files = { "%.yml$", "%.yaml$" },
  headers = "^version:.*",
  comment = "#",
  patterns = {
    { pattern = { "#", "\n" },            type = "comment"  },
    { pattern = "[%a_-][%w_-]*[%s]*:",    type = "function" },
    { pattern = '".*${.*}.*"',            type = "number"   },
    { pattern = { '[ruU]?"', '"', '\\' }, type = "string"   },
    { pattern = { "[ruU]?'", "'", '\\' }, type = "string"   },

  },
  symbols = {
    ["version"] = "keyword"
  }
}
