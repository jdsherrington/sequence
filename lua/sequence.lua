-- sequence/lua/sequence.lua
-- This shim adds the nvim/lua directory to the runtime path, then loads the theme

local function get_nvim_lua_path()
	local source = debug.getinfo(1, "S").source:sub(2)
	local repo_root = source:match("(.*/)lua/sequence.lua$")
	local nvim_lua = repo_root .. "nvim/lua/"
	nvim_lua = vim.loop.fs_realpath(nvim_lua) or nvim_lua
	if not nvim_lua:match("/$") then
		nvim_lua = nvim_lua .. "/"
	end
	return nvim_lua
end

local nvim_lua = get_nvim_lua_path()

package.path = nvim_lua .. "?.lua;" .. nvim_lua .. "?/init.lua;" .. package.path

return require("sequence.init")
