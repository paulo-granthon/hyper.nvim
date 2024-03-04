# hyper.nvim

A [Lua](https://www.lua.org/) port of the [Hyper.vim](https://github.com/jdsimcoe/hyper.vim)
theme for [Neovim](https://neovim.io/) with a few opinionated changes.

![Hyper.nvim example](./docs/example.png)

## Installation and usage

Install via your favorite plugin manager, for example [lazy](https://github.com/folke/lazy.nvim):

```lua
-- init.lua or plugins/hyper.lua
  'paulo-granthon/hyper.nvim',
```

Or [packer](https://github.com/wbthomason/packer.nvim):

```lua
-- init.lua
use('paulo-granthon/hyper.nvim')
```

## Enable hyper.nvim

Make sure to call `load` at some point. If you use Lazy, you can do it like this:

```lua
-- init.lua or plugins/hyper.lua
  {
    'paulo-granthon/hyper.nvim',
    config = function()
      require('hyper').load()
    end
  }
```

Or by including the following line in your `init.lua`:

```lua
-- init.lua
require('hyper').load()
```

## License

This project is licensed under the [MIT License](https://github.com/paulo-granthon/hyper.nvim/blob/main/LICENSE).
