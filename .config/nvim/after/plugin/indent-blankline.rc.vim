let g:indent_blankline_viewport_buffer = 10
highlight IndentBlanklineChar guifg=#6272a4 gui=nocombine
highlight IndentBlanklineSpaceChar guifg=#f8f8f2 gui=nocombine
highlight IndentBlanklineContextChar guifg=#f8f8f2 gui=nocombine
highlight IndentBlanklineSpaceCharBlankline guifg=#f8f8f2 gui=nocombine

" Enable plugin
let g:indent_blankline_enabled = v:true
" Specifies a list of filetype values for which this plugin is enabled
let g:indent_blankline_filetype = ['vim', 'css', 'html', 'python', 'java', 'javascript', 'c']
" Display indentation in the first column
let g:indent_blankline_show_first_indent_level = v:true  

" Rendering problem: https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
set colorcolumn=99999

lua << EOF
require("indent_blankline").setup {
    buftype_exclude = {"terminal"}
}
EOF
