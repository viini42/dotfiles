" This line makes pacman-installed global Arch Linux vim packages work.
source /usr/share/nvim/archlinux.vim

" Numbers
set number

" Syntax
syntax on

" Save last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Enable mouse use in all modes
set mouse=nv

" Tab with 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Powerline fonts to airline
let g:airline_powerline_fonts = 1

" This plugin was installed from <https://github.com/junegunn/vim-plug>
call plug#begin()
Plug 'vim-airline/vim-airline'
call plug#end()
