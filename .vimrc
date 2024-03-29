" autoload vimrc
autocmd! bufwritepost .vimrc source %

" pathogen load
filetype off
call pathogen#infect()
call pathogen#helptags()
"filetype plugin indent off
filetype plugin indent on
syntax on

autocmd BufNewFile,BufRead *.py set filetype=python "for python is indent

" set tab completion in vim just like normal bash
set wildmode=longest,list,full
set wildmenu

" when you need to make changes to a system file, 
" override the read-only permissions by typing :w!!
cmap w!! %!sudo tee > /dev/null %

" Remap leader to comma
let mapleader = ","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Return to normal mode on FocustLost
au FocusLost * call feedkeys("\<C-\>\<C-n>")

" Keep search pattern at the center of the screen.
"nnoremap <silent> n nzz
"nnoremap <silent> N Nzz
"nnoremap <silent> * *Nzz
"nnoremap <silent> # #zz
"nnoremap <silent> g* g*zz

" Keep search pattern at the center of the screen.
nnoremap <silent> n n
nnoremap <silent> N N
nnoremap <silent> * *N
nnoremap <silent> # #n
nnoremap <silent> g* g*

" reset search highlight
noremap <silent>// :nohls<CR>

" disable the yanking after change, i just don't like it
nnoremap c "_c

" make r become delete x words/till end of line and change with the latest
" register, ugly hacks!
nnoremap rw "_dwi<space><esc>p
nnoremap r2w "_d2wp
nnoremap r3w "_d3wp
nnoremap r4w "_d4wp
nnoremap r5w "_d5wp
nnoremap r$ "_d$p

" highlighting current line
set cursorline

" folding code
set foldmethod=syntax "for c is syntax

autocmd BufNewFile,BufRead *.py set foldmethod=indent "for python is indent
set foldlevel=9 "autofold starting from
set foldnestmax=9 "don't auto fold afeter
nnoremap <space> za
vnoremap <space> zf
" set folding code for enter
nnoremap <CR> za

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" going up and down every 7 lines (more than 
" that is too much for me)
noremap <C-U> 7k
noremap <C-D> 7j

" extend the history
set history=700
set undolevels=700

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" Map kj to ESC. kj == moving forward and backward
inoremap kj  <ESC>l
inoremap jk  <ESC>l

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

" changed to linux standard
set tabstop=8
set expandtab
set shiftwidth=8
set softtabstop=8


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
set nowrapscan        " do not wrap around

"set relativenumber
set relativenumber

" Make search insensitive
set hlsearch
set incsearch
set smartcase
set ignorecase

" Show whitespace
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" au InsertLeave * match ExtraWhitespace /\s\+$/

" Change Color when entering Insert Mode
" autocmd CmdwinEnter * highlight  CursorLine ctermbg=Red ctermfg=Red

" " Revert Color to default when leaving Insert Mode
" autocmd CmdwinLeave * highlight  CursorLine ctermbg=Green ctermfg=None

" Color scheme
" set t_Co=256
colorscheme wombat256mod
" let g:solarized_termcolors=256

" set airline
set laststatus=2
let g:airline_left_sep='>'
let g:airline_theme='molokai'

" settings for ctrlp
let g:ctrlp_max_height=20
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files = 0
let g:ctrlp_regexp = 1
"
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']
"let g:ctrlp_user_command = "find %s -type f | egrep -v '/\.(git|hg|svn)|solr|tmp/' | egrep -v '\.(png|exe|jpg|gif|jar|class|swp|swo|log|gitkep|keepme|so|o)$'"

set wildignore+=*.pyc  " py object
set wildignore+=*.o " c object
set wildignore+=*.bin " binary

" use  ctlr p + f5 to refresh list

" settings for flake and pep8
let g:pyflakes_use_quick_fix=0
let g:pep8_map='<leader>8'

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = 'context'

" fixing nerd tree for mac
let g:NERDTreeDirArrows=0
let NERDTreeIgnore = ['\.o$']
let NERDTreeIgnore += ['\.pyc$']

" look for tags in current folder
" or move to the root until found
set tags=./tags;/

" ctags open definition in split in vsplit
" twice, faster and i used this more often than open in curr
map <C-]> :vsplit <CR>:exec("tjump ".expand("<cword>"))<CR>
map <C-\> :split <CR>:exec("tjump ".expand("<cword>"))<CR>

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
" set showcmd
"
" set synmaxcol=0
"
" set backspace=indent,eol,start
"
" set cmdheight=2
" set the minimum line between the cursor and the top/bottom
set so=1
"
" set diffexpr=MyDiff()
" 
" set cursorline
" set showcmd
" 
" set synmaxcol=0
" 
" set backspace=indent,eol,start
" 
" 
" set diffexpr=MyDiff()
" 

" ARM ASM
let asmsyntax='armasm' 
let filetype_inc='armasm'
au BufNewFile,BufRead *.S setlocal ft=armasm

" to force syntax correction
syn sync fromstart

" set a vertical line in the screen
" setting for python, we use spaces instead of TAB
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
"autocmd FileType python setlocal colorcolumn=100
" setting for other commonly used files
autocmd FileType html setlocal shiftwidth=4 tabstop=4 
autocmd FileType htmldjango setlocal shiftwidth=4 tabstop=4 
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 
autocmd FileType css setlocal shiftwidth=2 tabstop=2 

let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_inctags = "html,body,head,tbody,div,select"
set smartindent
 "if exists('+colorcolumn')
 "set colorcolumn=100
 "highlight ColorColumn ctermbg=gray
 "else
 "au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
 "endif
 "
" to avoid folding messing up with syntax highlighting only in py tho
" syn sync fromstart


" go things from https://hackernoon.com/my-neovim-setup-for-go-7f7b6e805876
" 
" https://github.com/fatih/vim-go/wiki/Tutorial
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

let g:go_fmt_command = "goimports"

" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1
let g:go_list_type = "quickfix"

" navigate between errors quickly
nmap <silent> <C-n> <Plug>(ale_next_wrap)

" Error and warning signs.
let g:ale_sign_error = '>>'
let g:ale_sign_warning = ' '


let g:ale_set_highlights = 0
highlight clear ALEWarningSign

" let g:ale_completion_enabled = 1
"
" Quicksave command
noremap <C-Z> :update<CR><Esc>
vnoremap <C-Z> <C-C>:update<CR><Esc>
inoremap <C-Z> <C-O>:update<CR><Esc>

" https://github.com/w0rp/ale
" Error and warning signs.
let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '

" let g:go_metalinter_enabled = ['golint', 'errcheck']

" navigate between errors quickly
nmap <silent> <C-n> <Plug>(ale_next_wrap)
"nmap <silent> <C-p> <Plug>(ale_previous_wrap)

set nofoldenable

autocmd BufNewFile,BufRead *.html set foldmethod=indent
autocmd BufNewFile,BufRead *.css set foldmethod=indent

" use 256 colors in terminal
if !has("gui_running")
    set t_Co=256
    set term=screen-256color
endif

:hi SpellCap term=reverse ctermbg=16 gui=undercurl 
:hi SpellBad term=reverse ctermfg=15 ctermbg=197 gui=undercurl 
:hi Error term=reverse ctermfg=15 ctermbg=197 

:hi Todo term=standout ctermfg=182 ctermbg=239
