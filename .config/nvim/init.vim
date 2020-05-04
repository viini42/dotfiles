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

" This plugin was installed from <https://github.com/junegunn/vim-plug>
call plug#begin()
" Lightline status line
Plug 'itchyny/lightline.vim'

" Fzf
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
nnoremap <C-p> :Files<CR>
nnoremap <C-o> :Buffers<CR>
nnoremap <C-g> :GFiles<CR>
nnoremap <C-r> :Rg! 
nnoremap U :redo<CR>

" Toml language support
Plug 'cespare/vim-toml'

Plug 'maralla/completor.vim'
call plug#end()
