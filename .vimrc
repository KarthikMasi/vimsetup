set nocompatible              " required
filetype off                  " required


nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


set nu


"Enable folding
set foldmethod=indent
set foldlevel=99


" Enable folding with the spacebar
nnoremap <space> za


"See docstrings for folded code
let g:SimpylFold_docstring_preview=1


"Allow clipboard copying
set clipboard=unnamed

"Making sure autocomplete window goes away and defining a shortcut for goto
"defintion
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


"Making code pretty
let python_highlight_all=1
syntax on

execute pathogen#infect()
" BufNewFile,BufRead *.py
"   \ set tabstop=4
"   \ set softtabstop=4
"   \ set shiftwidth=4
"   \ set textwidth=79
"   \ set expandtab
"   \ set autoindent
"   \ set fileformat=unix
"   \ set encoding=utf-8	

" NeoBundle configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/
"
" " Required:
call neobundle#begin(expand('~/.vim/bundle/'))
"
" " Let NeoBundle manage NeoBundle
" " Required:
NeoBundleFetch 'Shougo/neobundle.vim'
"
" " My Bundles here:
" " Refer to |:NeoBundle-examples|.
" " Note: You don't set neobundle setting in .gvimrc!
"

NeoBundle 'Vimjas/vim-python-pep8-indent'

call neobundle#end()
"
" " Required:
filetype plugin indent on
"
" " If there are uninstalled bundles found on startup,
" " this will conveniently prompt you to install them.
NeoBundleCheck
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)


" let Vundle manage Vundle, required
" Folding.
" Auto-completion.
" Syntax check.
" PEP8 Checker - to check your Python code against some of the style
" conventions.
" Nerdtree for File Browsing. 
" To allow tabs in nerdtree.
" Enhanced Search.
" Git integration.
" Status bar that displays files, git branch, VirtualEnv, etc.
" Color schemes
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Vimjas/vim-python-pep8-indent'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
