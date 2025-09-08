![HeaderImage](https://i.imgur.com/J2f4Shh.png)

*\* nori-vim because it is a Hidamari Sketch reference (Nori is quite the techie tenant of Hidamari-sō just like us!)*, but it does have a ring to it like Neovim! 🤭

👉 Version **2.1.0** (09/02/2025)

---
As I thought of backing up my Neovim configuration, housing it in a repository is a novel way of doing it, and thus creativity brought me to the creation of **Nori-vim**! Mainly as a backup, anyone can also make use of my clunky sentimental Neovim config!

**Now rewritten in Lua!** [Wanted the old vimscript version?](https://github.com/luigi-ichi/nori-vim/tree/v1)

Built with Neovim 0.10.4 on macOS with love ❤️

## Dependencies
* `neovim`
* Everyday development utilities such as `git`, `curl`, `make`, or `gcc` (or any C or related compilers)
* A [Nerd Font](https://www.nerdfonts.com/font-downloads) to be also set via your terminal of choice (for rendering icons and pseudocharacters within Neovim)
* `fzf` and `bat` for file searching within Neovim
* `npm` for Nvim-Treesitter and LspServer to communicate

## Installation

Simply clone this into your `nvim` folder (on macOS, for example, it is in `~/.config/nvim`) and make sure to execute `:Lazy` in the command line (invoked by the `:` key) to install the plugins specified for this configuration.

To clone the contents of this repository directly to your `nvim` folder:
`cd <TO-YOUR-NVIM-PATH>`  

Then clone this entire repository to your Neovim config folder:
Via SSL (recommended): `git clone git@github.com:luigi-2ba3/nori-vim.git .`
Via HTTPS: `git clone https://github.com/luigi-ichi/nori-vim.git .`

### `where nvim`?
Here's this handy table to familiarize your Neovim path!
| Operating System        | Path                            |
|-------------------------|--------------------------------|
| Linux, Unix-like, macOS | `~/.config/nvim`              |
| Windows                | `%USERPROFILE%\AppData\Local\nvim` |
If you're unsure, you can execute the command `:echo stdpath('config')` inside Neovim, which will print back the directory to your Neovim configuration (where you'll `cd` to).

## Officially Tested Platforms
* macOS
    * Installed neovim via `brew`
    * Using iTerm2 instead of the native system terminal (native term does not support higher graphical capabilities)
    * Definitely need a Nerd Font to install and for the terminal to use
* Windows
    * Installed neovim via a setup executable (`.msi`)
    * Installed Git via a setup executable (`.exe`) with all default installation options
    * Windows Terminal supports everything out of the box, installing a Nerd Font may be optional
* Linux
    * Ubuntu (including Linux Mint, Lubuntu, etc.)
        * Installed neovim via `apt` (for more in-depth installations and for other distributions please refer to [neovim/neovim/wiki/Installing-Neovim/Linux](https://github.com/neovim/neovim/wiki/Installing-Neovim/921fe8c40c34dd1f3fb35d5b48c484db1b8ae94b#linux))
        * Prerequisites for Python needed
        * Nerd Font required to render Neovim with this config correctly

## What's Included?

*\* Showing significant plugins excluding dependencies*
* [**Xcode Theme** (lunacookies/vim-colors-xcode)](https://github.com/lunacookies/vim-colors-xcode)
* [**Startify** (mhinz/vim-startify)](https://github.com/mhinz/vim-startify)
* [**vim-surround** (tpope/vim-surround)](https://github.com/tpope/vim-surround)
* [**oil.nvim** (stevearc/oil.nvim)](https://github.com/stevearc/oil.nvim)
* [**Neo-tree.nvim** (nvim-neo-tree/neo-tree.nvim)](https://github.com/nvim-neo-tree/neo-tree.nvim)
* [**barbar.nvim** (romgrk/barbar.nvim)](https://github.com/romgrk/barbar.nvim)
* [**Lualine** (nvim-lualine/lualine.nvim)](https://github.com/nvim-lualine/lualine.nvim)
* [**which-key.nvim** (folke/which-key.nvim)](https://github.com/folke/which-key.nvim)
* [**fzf.vim** (junegunn/fzf.vim)](https://github.com/junegunn/fzf.vim)
* [**GitHub Copilot** (github/copilot.vim)](https://github.com/github/copilot.vim)
* [**kitty-scrollback.nvim** (mikesmithgh/kitty-scrollback.nvim)](https://github.com/mikesmithgh/kitty-scrollback.nvim)
* [**nvim-Treesitter** (nvim-treesitter/nvim-treesitter)](https://github.com/nvim-treesitter/nvimvim)
* [**prettier.nvim** (MunifTanjim/prettier.nvim)](https://github.com/MunifTanjim/prettier.nvim)
* [**nvim-lspconfig** (neovim/nvim-lspconfig)](https://github.com/neovim/nvim-lspconfig)

## Changelog
* 2.1.0 (9/2/2025)
	* Plugin configs in `lua/plugins` now expanded from the singular `init.lua` to their own respective Lua scripts.
	* New plugins!
		* `folke/which-key.nvim`
        * `oil.nvim`
	* Restored `nvim-treesitter` and `barbar.nvim`
	* Using `fzf.vim` instead of `telescope.nvim` 
	* Retracted all LSP-related functionality for a future version (can't figure it out atm >_<)
* 2.0.2 (8/30/2025)
    * Removed `lazy-lock.json` from `.gitignore` and restored said file from commit 8ad5176 for better plugin version consistency
    * Removed first-time setup shell scripts (both `bash` and `ps1`) as they were designed for vimscript nori-vim (v1 uses vim-plug)
* 2.0.1 (8/15/2025)
    * Changed `lua/lazy.lua` to `lua/lazy-config.lua` to avoid ambiguity with code that requires `require('lazy')`
    * Choosing a default theme by `lua/options.lua` is a little bit more friendly by using a global variable instead
    * Added `lazy-lock.json` to `.gitignore`
* 2.0.0 (8/15/2025)
    * Rewrote entire configuration to use Lua instead of Vimscript
    * Using `lazy.nvim` instead of `vim-plug`
* 1.1.0 (3/29/2025)
    * MIT License Ready!
    * Initial, official Windows support (at least the first time setup script) and Linux (Ubuntu)
    * README now includes the following
        * A quick table showcasing nvim paths
        * A more in-depth explanation how to clone this to your nvim path
        * A section that logs my officially tested platforms
        * This changelog (of course, Captain Obvious!)
    * Added `prettier.nvim` plugin
    * Unified a leader key to the spacebar (`let mapleader = " "`) for seamless compatibility across platforms
        * Opening NeoTree is now `Space+t` instead of `Alt+t`
    * New custom bindings to split nvim vertically `<leader>\` or horizontally `<leader>| (<leader> Shift \)`
    * `tabstop` and `shiftwidth` changed from 3 to 2
* 1.0.1 (3/24/2025)
    * README now includes dependencies that are needed before setting this up
* 1.0.0 (3/23/2025)
    * Initial release
