" autoload vimrc
autocmd! bufwritepost .vimrc source %

" pathogen load
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on

" Remap leader to comma 
let mapleader = ","

"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Quicksave command
noremap <C-Z> :update<CR><Esc>
vnoremap <C-Z> <C-C>:update<CR><Esc>
inoremap <C-Z> <C-O>:update<CR><Esc>

" extend the history hahahakk
set history=700
set undolevels=700

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" Map kj to ESC. kj == moving forward and backward
inoremap kj  <ESC>
inoremap jk  <ESC>

" Reselect visual block after indent/outdent 
vnoremap < <gv
vnoremap > >gv

" Easy split navigation 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" I can type :help on my own, thanks.
noremap <F1> <Esc>

" Force Saving Files that Require Root Permission 
cmap w!! %!sudo tee > /dev/null %

" setting for python, we use spaces instead of TAB
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

" Disable stupid backup and swap files
" use git anyway
set nobackup
set nowritebackup
set noswapfile

" set the line number
set number
set ai
set si
set smarttab
set nowrap " dont automatically wrap on load

" set a vertical line in the screen
" set colorcolumn=80
" highligh ColorColumn ctermbg=233

" Make search insensitive
set hlsearch
set incsearch
set smartcase
set ignorecase
" Show whitespace
" MUST be inserted BEFORE the colorscheme command
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" au InsertLeave * match ExtraWhitespace /\s\+$/


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
" set t_Co=200
" color wombat256mod


" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2


" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" map <Leader>g :call RopeGotoDefinition()<CR>
" let ropevim_enable_shortcuts = 1
" let g:pymode_rope_goto_def_newwin = "vnew"
" let g:pymode_rope_extended_complete = 1
" let g:pymode_breakpoint = 0
" let g:pymode_syntax = 1
" let g:pymode_syntax_builtin_objs = 0
" let g:pymode_syntax_builtin_funcs = 0
" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" set nocompatible
" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" behave mswin
" 
" set cursorline
" set encoding=utf-8
" set showcmd
" 
" set synmaxcol=0
" 
" set backspace=indent,eol,start
" 
" set cmdheight=2
" set so=7
" 
" set diffexpr=MyDiff()
" 
