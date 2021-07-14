-- put user settings here
-- this module will be loaded after everything else when the application starts

local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"

-- Directory for workspaces
config.workspace_dir = "/opt/lite/data/workspaces"

-- light theme:
-- require "user.colors.summer"

-- dark theme:
require "user.colors.gruvbox_dark"

-- Ignore directory and ignore specific file
table.insert(config.ignore_paths, "node_modules/")
table.insert(config.ignore_paths, "venv/")
table.insert(config.ignore_paths, "vendor/")

-- key binding:
-- keymap.add { ["ctrl+escape"] = "core:quit" }

