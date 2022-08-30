let NERDTreeMinimalUI=1             " remove " Press ? for help at the top
" :h cterm-colors
highlight Directory ctermfg=green  " CWD color

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let NERDTreeShowHidden=1 " show hidden files

" -- NerdTree-Highlight-filenames ----------------------    https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
let g:NERDTreeFileExtensionHighlightFullName = 1

" -- NerdTree-GIT ------------------------------------------- https://github.com/Xuyuanp/nerdtree-git-plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
" How to show "ignored" status?
let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0
