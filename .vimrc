" Make sure you use version 8 
" brew install vim --with-override-system-vi

set number
set shiftwidth=2
set tabstop=2

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Install plugins
" :PlugInstall

" Make sure you use single quotes

" Shorthand notation
" fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" fetches https://github.com/w0rp/ale
Plug 'w0rp/ale'

" fetches https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" fetches https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()

" Not displaying, this is a test
let g:ale_enabled = 1

let g:ale_sign_column_always = 1

let g:ale_linters = {
\   'javascript': ['eslint', 'prettier', 'prettier-eslint'],
\}

" Put this in vimrc or a plugin file of your own.
" " After this is configured, :ALEFix will try and fix your JS code with
" ESLint.
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

" " Set this setting in vimrc if you want to fix files automatically on save.
" " This is off by default.
let g:ale_fix_on_save = 1

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" Check JSX files with stylelint and eslint (have to install these first).
let g:ale_linters = {'jsx': ['stylelint', 'eslint']}
let g:ale_linter_aliases = {'jsx': 'css'}
