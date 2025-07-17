# Sequence - Neovim Plugin

By default, the theme will automatically detect if you have any compatible plugins installed and load the associated highlight groups for each plugin.

## Lazy.nvim Install

In your lazy.nvim configuration (usually init.lua, or wherever you load your plugins), add the following:

```lua
return {
  "jdsherrington/sequence.nvim",
  name = "sequence",
  lazy = false,
  priority = 1000,
  config = true, -- Uses default options
}
```

For an advanced configuration with maximum customisation:

```lua
return {
  "jdsherrington/sequence",
  name = "sequence",
  lazy = false,               -- Load immediately at startup (important for colorschemes)
  priority = 1000,            -- High priority so it loads before other plugins

  opts = {
    -- THEME OPTIONS
    transparent = false,         -- If true, disables background color (for terminal transparency)
    dim_inactive = false,        -- If true, dims inactive windows
    styles = {
      comments = { italic = true },   -- Style for comments (italic, bold, underline, etc.)
      keywords = { bold = false },    -- Style for keywords
      functions = { bold = false },   -- Style for function names
      strings = { italic = false },   -- Style for strings
    },
    integrations = {
      auto_detect = true,        -- Automatically detect and enable highlights for installed plugins
      telescope = true,          -- Force enable Telescope highlights (optional, auto-detect usually enough)
      ["nvim-tree"] = true,      -- Force enable nvim-tree highlights
      gitsigns = true,           -- Force enable gitsigns highlights
      lualine = true,            -- Force enable lualine highlights
      ["which-key"] = true,      -- Force enable which-key highlights
      -- ["some-plugin"] = false, -- Force disable a plugin even if installed
    },
    custom_highlights = {
      -- Override or add custom highlight groups here
      -- Example:
      -- MyCustomGroup = { fg = "#A5888B", bg = "#2A2F3C" },
    },
    debug = false,               -- If true, prints debug info about loaded plugins and highlights
  },

  config = function(_, opts)
    require("sequence").setup(opts)
  end,
}
```

## Packer Install

In your packer configuration (e.g. ~/.config/nvim/lua/plugins.lua):

```lua
use {
  "jdsherrington/sequence",
  config = function()
    require("sequence").setup()  -- Use default options
  end,
}
```

For an advanced configuration with maximum customisation:

```lua
use {
    'jdsherrington/sequence',
    config = function()
      require('sequence').setup({
        -- === THEME OPTIONS ===
        transparent = false,         -- If true, disables background color (for terminal transparency)
        dim_inactive = false,        -- If true, dims inactive windows
        styles = {
          comments = { italic = true },   -- Style for comments (italic, bold, underline, etc.)
          keywords = { bold = false },    -- Style for keywords
          functions = { bold = false },   -- Style for function names
          strings = { italic = false },   -- Style for strings
        },
        integrations = {
          auto_detect = true,        -- Automatically detect and enable highlights for installed plugins
          telescope = true,          -- Force enable Telescope highlights (optional, auto-detect usually enough)
          ["nvim-tree"] = true,      -- Force enable nvim-tree highlights
          gitsigns = true,           -- Force enable gitsigns highlights
          lualine = true,            -- Force enable lualine highlights
          ["which-key"] = true,      -- Force enable which-key highlights
          -- ["some-plugin"] = false, -- Force disable a plugin even if installed
        },
        custom_highlights = {
          -- Override or add custom highlight groups here
          -- Example:
          -- MyCustomGroup = { fg = "#A5888B", bg = "#2A2F3C" },
        },
        debug = false,               -- If true, prints debug info about loaded plugins and highlights
      })
    end
  }
```

Then, just add the following to your Neovim `init.lua` after your plugin manager loads:

```lua
vim.cmd.colorscheme("sequence")
```

## Contributing

Adding support for a new Neovim plugin is easy and doesn’t require editing the core theme files. Just follow these steps:

### Check for Existing Support

First, look in `nvim/lua/sequence/groups/plugins/` to see if support for your plugin already exists (e.g., `telescope.lua`, `gitsigns.lua`).

### Create a New Plugin Highlight File

If it doesn’t exist, create a new file named after the plugin, for example: `nvim/lua/sequence/groups/plugins/myplugin.lua`

```lua
-- Example template:
local M = {}
local utils = require("sequence.utils")

function M.get_highlights(colors)
  return utils.merge_highlights(
    -- Replace these with actual highlight groups from your plugin
    utils.hl("MyPluginNormal", { fg = colors.fg, bg = colors.grey }),
    utils.hl("MyPluginBorder", { fg = colors.lightgrey, bg = colors.grey }),
    utils.hl("MyPluginTitle", { fg = colors.lightblue, bold = true })
    -- Add more highlight groups as needed
  )
end

return M
```

> Tip: Use only colors from the Sequence palette (see `nvim/lua/sequence/colors.lua`).
> You can find the plugin’s highlight groups in its documentation or by running `:hi` in Neovim after loading the plugin.

### Test Your Changes

Open Neovim with your local Sequence theme (make sure the plugin is installed and loaded). Check that your highlights appear as expected; you can reload the colorscheme with :colorscheme sequence after making changes.

### Don't Edit Core Files!

By default, the theme will auto-detect and load any new plugin file you add to `groups/plugins/`.

Then, just open a pull request with a clear title like "Add support for myplugin" and include any special notes about the highlight choices if applicable.
