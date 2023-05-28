# lualine-copilot

A lualine component to show github copilot status,
you can toggle the enabled state by clicking

This is a fork of the excellent [lualine-copilot](https://github.com/ofseed/lualine-copilot).
deferent is this plugins depends on the [copilot.lua](https://github.com/zbirenbaum/copilot.lua) not [copilot.vim](https://github.com/github/copilot.vim)

# Screenshots

Copilot enabled
![image](https://user-images.githubusercontent.com/8042345/241569989-57d59b92-3699-459a-a62a-ac37648a6b28.png)

Copilot disabled
![image](https://user-images.githubusercontent.com/8042345/241570024-2d81178b-a97e-4cdc-a72d-3093acb15005.png)

# Installation

## lazy.nvim

```lua
-- lua
{ "leisurelicht/lualine-copilot" }
```

## [packer.nvim](https://github.com/wbthomason/packer.nvim)
```lua
-- lua
use { "leisurelicht/lualine-copilot" }
```

# Usage
Default values for lualine configuration is
```lua
lualine_x = {
  'encoding',
  'fileformat',
  'filetype'
}
```
So I recommend that you can add it to this table and arrange them in a reasonable order.
Like is
```lua
lualine_x = {
  "copilot",
  "filetype",
  "fileformat",
  "encoding",
},
```

Or you can custom icons.
k
```lua
-- lua
require("lualine").setup {
  sections = {
    lualine_x = {
      {
        "copilot",
        -- default is true.
        symbols = {
          -- use your icons to replace
          enabled = " ",
          disabled = " ",
        }
      },
    }
  }
}
```
