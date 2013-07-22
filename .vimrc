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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Return to normal mode on FocustLost
au FocusLost * call feedkeys("\<C-\>\<C-n>") 

" select all
map <Leader>a ggVG

" Keep search pattern at the center of the screen.
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" reset search highlight
noremap <silent>// :nohls<CR>

" disable the of yanking after change
nnoremap c "_c

" make r become delete x words/till end of line and change with the latest
" register, ugly hacks!
nnoremap rw "_dwP
nnoremap r2w "_d2wP
nnoremap r3w "_d3wP
nnoremap r4w "_d4wP
nnoremap r5w "_d5wP
nnoremap r$ "_d$p

" folding code
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
vnoremap <space> zf

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

" extend the history 
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
if exists('+colorcolumn')
    set colorcolumn=81
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Make search insensitive
set hlsearch
set incsearch
set smartcase
set ignorecase

" Show whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
set t_Co=256
colorscheme desert

" set airline
set laststatus=2
let g:airline_left_sep='>'
let g:airline_theme='light'

" settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height=10
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*build/*
set wildignore+=*/coverage/*

" settings for flake and pep8
let g:pyflakes_use_quick_fix=0
let g:pep8_map='<leader>8'

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = 'context'
    
" imap <buffer><Tab> <M-/>
"
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
