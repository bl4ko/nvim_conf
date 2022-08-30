" Key - maps, moreinfo:
" https://stackoverflow.com/questions/3776117/what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping 

" Center vim, when moving up and down (zz)
:nnoremap j jzz
:nnoremap k kzz
:nnoremap G Gzz

" When lines are wrapped move one up
" https://stackoverflow.com/questions/20975928/moving-the-cursor-through-long-soft-wrapped-lines-in-vim
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

" Copy to global register with CTRL+C instead "+y
vnoremap <C-c> "+y
vnoremap <C-x> "+x
" select all
nmap <C-a> ggVG

" leader key
let mapleader = "," " map leader to comma

