![HeaderImage](https://imgur.com/yVTLCY6.png)

*\* Nori-vim because it is a Hidamari Sketch reference (Nori is quite the techie tenant of Hidamari-sō just like us!)*, but it does have a ring to it like Neovim! 🤭

👉 Version **1.1.0** (03/29/2025)

---
As I thought of backing up my Neovim configuration, housing it in a repository is a novel way of doing it, and thus creativity brought me to the creation of **Nori-vim**! Mainly as a backup, anyone can also make use of my clunky sentimental Neovim config!

As of now, my configuration concurrently uses both `init.vim` and `init.lua` (`lua/init.lua`). Clunky it may be, but making it entirely in Lua is a goal!

Built with Neovim 0.10.4 on macOS with love ❤️

## Dependencies
* `neovim`
* Everyday development utilities such as `git`, `curl`, `make`, or `gcc` (or any C or related compilers)
* A [Nerd Font](https://www.nerdfonts.com/font-downloads) to be also set via your terminal of choice (for rendering icons and pseudocharacters within Neovim)
* `npm` for Nvim-Treesitter and LspServer to communicate
* Languages setup such as `python` (or `python3`), `ruby`, among others.
* Language Server Protocols (LSPs) (i.e. `pyright` or `ruby-lsp`) installed from your respective package managers or its binaries loaded by the user (will display a message at the command bar every startup if an LSP is not installed, but will not interfere with your command sequences)

## Installation

Simply clone this into your `nvim` folder (on macOS, for example, it is in `~/.config/nvim`) and make sure to execute `firstTimeSetup.bash` (or `firstTimeSetup.ps1` for Windows) which is just a fancy script to install **vim-plug**, my plugin manager which takes care of the plugins I have on my Neovim config here!

To clone the contents of this repository directly to your `nvim` folder:
`cd <TO-YOUR-NVIM-PATH>`  
`git clone git@github.com:luigi-2ba3/nori-vim.git .`

### `where nvim`?
Here's this handy table to familiarize your Neovim path!
| Operating System        | Path                            |
|-------------------------|--------------------------------|
| Linux, Unix-like, macOS | `~/.config/nvim`              |
| Windows                | `%USERPROFILE%\AppData\Local\nvim` |

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
* [**Neo-tree.nvim** (nvim-neo-tree/neo-tree.nvim)](https://github.com/nvim-neo-tree/neo-tree.nvim)
* [**Lualine** (nvim-lualine/lualine.nvim)](https://github.com/nvim-lualine/lualine.nvim)
* [**GitHub Copilot** (github/copilot.vim)](https://github.com/github/copilot.vim)
* [**kitty-scrollback.nvim** (mikesmithgh/kitty-scrollback.nvim)](https://github.com/mikesmithgh/kitty-scrollback.nvim)
* [**nvim-Treesitter** (nvim-treesitter/nvim-treesitter)](https://github.com/nvim-treesitter/nvimvim)
* [**vim-lsp** (prabirshrestha/vim-lsp)](https://github.com/prabirshrestha/vim-lsp)
* [**barbar.nvim** (romgrk/barbar.nvim)](https://github.com/romgrk/barbar.nvim)
* [**telescope.nvim** (nvim-telescope/telescope.nvim)](https://github.com/nvim-telescope/telescope.nvim)
* [**prettier.nvim** (MunifTanjim/prettier.nvim)](https://github.com/MunifTanjim/prettier.nvim)

## Changelog
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
