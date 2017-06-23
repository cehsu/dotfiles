" Welcome to my .vimrc, make yourself at home
" add to .bashprofile: alias svim='vim -u ~/.vimrc_simple'
 
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
 
" Make sure you use single quotes
Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
 
" Initialize plugin system
call plug#end()
 
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
 
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
 
let g:airline_theme='light'
 
syntax enable
set background=light
colorscheme solarized
let g:solarized_termcolors=256

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
