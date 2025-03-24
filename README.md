![HeaderImage](https://imgur.com/yVTLCY6.png)

*\* Nori-vim because it is a Hidamari Sketch reference (Nori is quite the techie tenant of Hidamari-sō just like us!)*, but it does have a ring to it like Neovim! 🤭

👉 Version **1.0.1** (03/24/2025)

---
As I thought of backing up my Neovim configuration, housing it in a repository is a novel way of doing it, and thus creativity brought me to the creation of **Nori-vim**! Mainly as a backup, anyone can also make use of my clunky sentimental Neovim config!

As of now, my configuration concurrently uses both `init.vim` and `init.lua` (`lua/init.lua`). Clunky it may be, but making it entirely in Lua is a goal!

Built with Neovim 0.10.4 on macOS with love ❤️

## Dependencies
*Version 1.0.1 adds this section because I was too excited to share this that I completely forgot this section*
* `neovim`
* Everyday development utilities such as `git`, `curl`, `make`, or `gcc` (or any C or related compilers)
* A [Nerd Font](https://www.nerdfonts.com/font-downloads) to be also set via your terminal of choice (for rendering icons and pseudocharacters within Neovim)
* `npm` for Nvim-Treesitter and LspServer to communicate
* Languages setup such as `python` (or `python3`), `ruby`, among others.
* Language Server Protocols (LSPs) (i.e. `pyright` or `ruby-lsp`) installed from your respective package managers or its binaries loaded by the user (will nag you if an LspServer is not installed unless disabling LspServer entirely)

## Installation

***For now, this only works on macOS, UNIX, and should be on Linux.*** I might consider making one for Windows (but WSL is better).

Simply clone this into your `nvim` folder (on macOS, for example, it is in `~/.config/nvim`) and make sure to execute `firstTimeSetup.bash` which is just a fancy script to install **vim-plug**, my plugin manager which takes care of the plugins I have on my Neovim config here!

## What's Included?

*\* Showing significant plugins excluding dependencies*
* [**Xcode Theme** (lunacookies/vim-colors-xcode)](https://github.com/lunacookies/vim-colors-xcode)
* [**Startify** (mhinz/vim-startify)](https://github.com/mhinz/vim-startify)
* [**vim-surround** (tpope/vim-surround)](https://github.com/tpope/vim-surround)
* [**Neo-tree.nvim** (nvim-neo-tree/neo-tree.nvim)](https://github.com/nvim-neo-tree/neo-tree.nvim)
* [**Lualine** (nvim-lualine/lualine.nvim)](https://github.com/nvim-lualine/lualine.nvim)
* [**GitHub Copilot** (github/copilot.vim)](https://github.com/github/copilot.vim)
* [**kitty-scrollback.nvim** (mikesmithgh/kitty-scrollback.nvim)](https://github.com/mikesmithgh/kitty-scrollback.nvim)
* [**nvim-Treesitter** (nvim-treesitter/nvim-treesitter)](https://github.com/nvim-treesitter/nvim-treesitter)
* [**vim-lsp** (prabirshrestha/vim-lsp)](https://github.com/prabirshrestha/vim-lsp)
* [**barbar.nvim** (romgrk/barbar.nvim)](https://github.com/romgrk/barbar.nvim)
* [**telescope.nvim** (nvim-telescope/telescope.nvim)](https://github.com/nvim-telescope/telescope.nvim)
