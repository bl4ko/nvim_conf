if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

" https://github.com/junegunn/vim-plug
" PlugInstall [name ...]        Install plugins
" PlugClean                     Remove unlisted plugins 
call plug#begin('~/.config/nvim/autoload/plugged')

" -- Customization-themes  ---------------------------------------------------------------------
Plug 'dracula/vim', {'as':'dracula'} " dracula theme
Plug 'tpope/vim-commentary' " commenting with <g-c>, :2,6Commentary, :g/text/Commentary
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" -- My plugins here
Plug 'nvim-lua/plenary.nvim'                " TODO: !!TELESCOPE depndecny!!: Useful lua functions used by lots of plugins
Plug 'nvim-telescope/telescope.nvim'        " TODO: Telescope must be used with plenary.nvim
Plug 'godlygeek/tabular'

" -- LSP (Language Server Protocol) ----------------------------------------------------------------
Plug 'williamboman/nvim-lsp-installer'      " plugin that allows you to manage LSP servers (servers are installed inside :echo stdpath("data")
Plug 'neovim/nvim-lspconfig'                " nvim-lspconfig plugin. Language servers can be found: https://microsoft.github.io/language-server-protocol/implementors/servers/ 

" -- Code completition engine (based on LSP) ---------------------------------------------------------------------------
Plug 'hrsh7th/nvim-cmp'                     " TODO: Autocompletion plugin
Plug 'hrsh7th/cmp-buffer'                   " TODO: Buffer completions
Plug 'hrsh7th/cmp-path'                     " TODO: Path completitions
Plug 'hrsh7th/cmp-cmdline'                  " TODO: Cmdline completions
Plug 'hrsh7th/cmp-nvim-lsp'                 " TODO: LSP source for nvim-cmp
" -- snippets
Plug 'L3MON4D3/LuaSnip'                     " TODO: Snippets plugin/engine

" -- AutoPairs  -----------------------------------------------------------------------------------
Plug 'windwp/nvim-autopairs'                " Auto bracket pairs
Plug 'windwp/nvim-ts-autotag'               " Auto tags

" -- IndentLine + colorizer -----------------------------------------------------------------------
Plug 'lukas-reineke/indent-blankline.nvim'  " indent Plug 
Plug 'norcalli/nvim-colorizer.lua'          " TODO: colorize #colors (css files, etc)
Plug 'hoob3rt/lualine.nvim'                 " vim Dracula - Bar-lower
Plug 'akinsho/bufferline.nvim'              " TODO: Vim upper-bar https://github.com/akinsho/bufferline.nvim
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'kyazdani42/nvim-tree.lua'           " TODO instead of nerdtree

" -- Nerdtree -------------------------------------------------------------------------------------
Plug 'preservim/nerdtree'                   " TODO: nerd tree
Plug 'Xuyuanp/nerdtree-git-plugin'          " Nerdtree-Git: https://github.com/Xuyuanp/nerdtree-git-plugin
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "icons highlight colors for nerdtree: https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
Plug 'ryanoasis/vim-devicons'               " Icons for nerdtree

" -- Git ------------------------------------------------------------------------------------------
Plug 'tpope/vim-fugitive'                   " Use git commands in vim
Plug 'airblade/vim-gitgutter'               " Git diffs 

" -- ide ------------------------------------------------------------------------------------------
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " treesitter: colors for languages

" Plug 'tami5/lspsaga.nvim'                   " TODO
" Plug 'folke/lsp-colors.nvim'                " TODO
" Plug 'onsails/lspkind-nvim'                 " TODO

call plug#end()

colorscheme dracula
