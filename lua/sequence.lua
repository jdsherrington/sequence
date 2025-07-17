-- sequence/lua/sequence.lua
-- This shim adds the nvim/lua directory to the runtime path, then loads the theme

local nvim_lua_path = debug.getinfo(1, "S").source:sub(2):match("(.*/)") .. "../../nvim/lua/?.lua"
local nvim_lua_init_path = debug.getinfo(1, "S").source:sub(2):match("(.*/)") .. "../../nvim/lua/?/init.lua"
package.path = nvim_lua_path .. ";" .. nvim_lua_init_path .. ";" .. package.path
return require("sequence")
