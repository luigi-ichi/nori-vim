" [ PLUGINS via vim-plug ]
call plug#begin()

Plug 'arzg/vim-colors-xcode' " Xcode Theme
Plug 'mhinz/vim-startify'    " Home Page when opening Neovim without a file
Plug 'tpope/vim-surround'	  " Change surrounding characters with <cs[oldchar][newchar]>
Plug 'stevearc/oil.nvim'
Plug 'stevearc/aerial.nvim'
Plug 'nvim-neo-tree/neo-tree.nvim' " File Tree with <A-t>
Plug 'nvim-lua/plenary.nvim'
Plug 'MunifTanjim/nui.nvim'		  " UI Component Library for Neovim.
Plug 'nvim-lualine/lualine.nvim'	  " Status Line
Plug 'nvim-tree/nvim-web-devicons' " Icons used by Neo-tree.nvim and Lualine.nvim
Plug 'github/copilot.vim'		  	  " GitHub Copilot integration (:Copilot setup)
Plug 'mikesmithgh/kitty-scrollback.nvim' "
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Type Setter
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neovim/nvim-lspconfig'
Plug 'prabirshrestha/vim-lsp'		  " Family of LSP plugins (:LSPInstallServer)
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'lewis6991/gitsigns.nvim' 	  " OPTIONAL: for git status
Plug 'romgrk/barbar.nvim'			  " Tab Bar (see Keybinds below)
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' } " Fuzzy Searching


call plug#end()

" [ Essential Settings ]
set termguicolors	" Color support in Neovim
lua require('init')

" [ General Settings ]
set number					" Line Numbers
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
" set ignorecase              " case insensitive
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search

" [ Spacing ]
set noexpandtab
set tabstop=3               " number of columns occupied by a tab 
" set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=3             " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting

" [ Other Settings ]
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim

" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

" [ Custom Keybinds ]
nnoremap <A-t> <Cmd>Neotree toggle<CR>
nnoremap <Esc> <C-\><C-n>

" [ Barbar Keybinds ]
" Move to previous/next
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>

" Re-order to previous/next
nnoremap <silent>    <A-l> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A-;> <Cmd>BufferMoveNext<CR>

" Goto buffer in position...
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>

" Pin/unpin buffer
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>

" Goto pinned/unpinned buffer
"                          :BufferGotoPinned
"                          :BufferGotoUnpinned

" Close buffer
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
" Restore buffer
nnoremap <silent>    <A-s-c> <Cmd>BufferRestore<CR>

" Wipeout buffer
"                          :BufferWipeout
" Close commands
"                          :BufferCloseAllButCurrent
"                          :BufferCloseAllButVisible
"                          :BufferCloseAllButPinned
"                          :BufferCloseAllButCurrentOrPinned
"                          :BufferCloseBuffersLeft
"                          :BufferCloseBuffersRight

" Magic buffer-picking mode
nnoremap <silent> <C-p>    <Cmd>BufferPick<CR>
nnoremap <silent> <C-s-p>  <Cmd>BufferPickDelete<CR>

" Sort automatically by...
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bn <Cmd>BufferOrderByName<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used

let mapleader = " "
" [ Telescope Keybinds ]
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
