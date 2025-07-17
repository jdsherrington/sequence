-- sequence/lua/sequence.lua
-- This shim adds the nvim/lua directory to the runtime path, then loads the theme

local nvim_lua_path = debug.getinfo(1, "S").source:sub(2):match("(.*/)") .. "../../nvim"
if not vim.tbl_contains(vim.api.nvim_list_runtime_paths(), nvim_lua_path) then
	vim.opt.rtp:append(nvim_lua_path)
end
return require("sequence.init")
