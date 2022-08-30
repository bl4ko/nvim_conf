" General Settings "{{{
" --------------------------------------------------------------------

" init autocmd
autocmd!
syntax enable		" Enable syntax highlighting	
set encoding=utf-8	" The displayed encoding
set fileencoding=utf-8 "The encoding written to a file
set number 		    " line numbers
set mouse=a		    " Enable mouse
set termguicolors   " needed for dracula theme (vim compatabile with extensions)
set noerrorbells	" Disable annoying vim-beeping		
set nowrap 		    " Disable line wrapping
" searching with /
set hlsearch  		" highlitghts all found items
set incsearch		" highlights logical matches when searching and adding characters https://stackoverflow.com/questions/25635413/vim-incremental-search
set ignorecase 		" ignorecase when searching
set cursorline 		" highlight line which cursor is on
set noswapfile		" disable .swp files
set nobackup 		" turn off: backups are creating for files before writing to them
set smarttab 		" Makes tabbing smarter: will realize you have 2 instead of 4
set expandtab		" convert tab to spaces
set tabstop=4		" insert 4 spaces for a tab
set shiftwidth=4 	" Number of space characters inserted for identation
set autoindent 		" auto indenting to the next line
set smartindent 	" set autoindent needed
set breakindent
set foldmethod=manual
let g:markdown_folding = 1 " enable markdown folding
set hidden          " vim tabs: https://dev.to/iggredible/using-buffers-windows-and-tabs-efficiently-in-vim-56jc

" highlight Cursor guifg=white guibg=black
" highlight iCursor guifg=white guibg=steelblue
" set guicursor=n-v-c:block-Cursor
" set guicursor+=i:ver100-iCursor
" set guicursor+=n-v-c:blinkon0
" set guicursor+=i:blinkwait10

" Autosaving in vim: https://vi.stackexchange.com/questions/74/is-it-possible-to-make-vim-auto-save-files
autocmd CursorHold * update
autocmd CursorHold, CursorHoldI * update

filetype plugin on 	" https://vi.stackexchange.com/questions/10124/what-is-the-difference-between-filetype-plugin-indent-on-and-filetype-indent
" set formatoptions+=r 	" https://vi.stackexchange.com/questions/1983/how-can-i-get-vim-to-stop-putting-comments-in-front-of-new-lines
autocmd FileType * set formatoptions-=cro " https://superuser.com/questions/271023/can-i-disable-continuation-of-comments-to-the-next-line-in-vim

"}}}

" Imports "{{{
" ----------------------------------------------------------------------------
runtime ./plug.vim
if has("unix")
    let s:uname = system("uname -s")
    " Do Mac stuff 
    if s:uname == "Darwin\n"
        runtime ./macos.vim
    endif 
endif
if has('win32')
    runtime ./windows.vim
endif

runtime ./maps.vim
"}}}

" enable folding in vim files (method=marker means mark fold with {{{)
" vim: set foldmethod=marker foldlevel=0: 
