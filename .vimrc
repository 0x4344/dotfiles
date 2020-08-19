syntax on

" tab
set tabstop=2
set shiftwidth=2
set expandtab

" search
set incsearch
set hlsearch

" brackets, disable swap & visual bell
set showmatch
set noswapfile
set novb

set rnu
colorscheme dracula

" vim- plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim plugins
call plug#begin('~/.vim/plugged')

" plugins
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-easy-align'
Plug '907th/vim-auto-save'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'

" end
call plug#end()

" set paste
set pastetoggle=<F2>

" mouse scroll
set mouse=a

" autosave
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1  " do not display the auto-save notification
let g:auto_save_events = ["InsertLeave", "TextChanged", "CompleteDone"]

" nerdtree
map <C-n> :NERDTreeToggle<CR>
