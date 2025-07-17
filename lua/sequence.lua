-- sequence/lua/sequence.lua
-- This shim adds the nvim/lua directory to the runtime path, then loads the theme

local base = debug.getinfo(1, "S").source:sub(2):match("(.*/)") .. "../../nvim/lua/"
base = vim.fs.normalize(base)
package.path = base .. "?.lua;" .. base .. "?/init.lua;" .. package.path
return require("sequence.init")
