# lualine-ctime

Time and date display extension for [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

## Why??

I always forgot to attend course in collegue while happy programming at dormitory. So I made this plugin to always remind me the current time.

## Screenshot

![lualine-ctime](screenshot.png)

## Use

Add the component ctime or cdate to one of your lualine sections.

```lua
require'lualine'.setup {
	...
	sections = {
		lualine_x = {
			'cdate',
			'ctime',
			...
		}
	}
}
```

## Installation

### [vim-plug](https://github.com/junegunn/vim-plug)

```lua
Plug 'archibate/lualine-ctime'
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use 'archibate/lualine-ctime'
```

## Example configuration

```lua
use {
    'nvim-lualine/lualine.nvim',
    'archibate/lualine-ctime',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
    require'lualine'.setup {
        options = {
            theme = 'auto',
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {'filename'},
            lualine_x = {'ctime'},
            lualine_y = {'progress'},
            lualine_z = {'location'},
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {},
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {}
    }
    end,
}
```
