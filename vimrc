set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'airblade/vim-gitgutter'
Plugin 'bufexplorer.zip'
Plugin 'elzr/vim-json'
"Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'othree/html5.vim'
Bundle "pangloss/vim-javascript"
Plugin 'rizzatti/dash.vim'
Plugin 'rstacruz/sparkup'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-markdown'
Plugin 'vcscommand.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'kakkyz81/evervim'
"Plugin 'violetyk/neocomplete-php.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Shutnik/jshint2.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-fireplace'

Plugin 'nanotech/jellybeans.vim'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'twerth/ir_black'
Plugin 'twitter/hogan.js'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" -----------------------------------------------------------------------------
" |                            VIM Settings                                   |
" |                   (see gvimrc for gui vim settings)                       |
" |                                                                           |
" | Some highlights:                                                          |
" |   jj = <esc>  Very useful for keeping your hands on the home row          |
" |   ,n = toggle NERDTree off and on                                         |
" |                                                                           |
" |   hh = inserts '=>'                                                       |
" |   aa = inserts '@'                                                        |
" |                                                                           |
" |   ,h = new horizontal window                                              |
" |   ,v = new vertical window                                                |
" |                                                                           |
" |   ,i = toggle invisibles                                                  |
" |                                                                           |
" |   enter and shift-enter = adds a new line after/before the current line   |
" |                                                                           |
" |   :call Tabstyle_tabs = set tab to real tabs                              |
" |   :call Tabstyle_spaces = set tab to 2 spaces                             |
" |                                                                           |
" | Put machine/user specific settings in ~/.vimrc.local                      |
" -----------------------------------------------------------------------------

set enc=utf8
set fileencodings=utf-8,big5
set encoding=utf8
set tenc=utf8
set termencoding=utf-8
set nocompatible

set pastetoggle=<F2>
" change the mapleader from \ to ,
let mapleader=","
imap jj <Esc>
"imap hh =>
"imap .. ->
autocmd FileType php imap hh =>
autocmd FileType php imap .. ->

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundles directory
"call pathogen#helptags()
"call pathogen#runtime_append_all_bundles()

" Tabs ************************************************************************
"set sta " a <Tab> in an indent inserts 'shiftwidth' spaces

function! Tabstyle_tabs()
  " Using 4 column tabs
  set softtabstop=4
  set shiftwidth=4
  set tabstop=4
  set expandtab
  autocmd User Rails set softtabstop=4
  autocmd User Rails set shiftwidth=4
  autocmd User Rails set tabstop=4
  autocmd User Rails set noexpandtab
endfunction

function! Tabstyle_spaces()
  " Use 2 spaces
  set softtabstop=2
  set shiftwidth=2
  set tabstop=2
  set expandtab
endfunction

call Tabstyle_tabs()

" Indenting *******************************************************************
set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent	(local to buffer)


" Scrollbars ******************************************************************
set sidescrolloff=2
set numberwidth=4


" Windows *********************************************************************
set equalalways " Multiple windows, when created, are equal in size
set splitbelow splitright

"Vertical split then hop to new buffer
:noremap ,v :vsp^M^W^W<cr>
:noremap ,h :split^M^W^W<cr>


" Cursor highlights ***********************************************************
"set cursorline
"set cursorcolumn


" Searching *******************************************************************
set hlsearch  " highlight search
set incsearch  " incremental search, search as you type
set ignorecase " Ignore case when searching
set smartcase " Ignore case when searching lowercase


" Colors **********************************************************************
"set t_Co=256 " 256 colors
set background=dark
syntax on " syntax highlighting
colorscheme ir_black

" Status Line *****************************************************************
set showcmd
set ruler " Show ruler
"set ch=2 " Make command line two lines high


" Line Wrapping ***************************************************************
set nowrap
set linebreak  " Wrap at word


" Mappings ********************************************************************

" Directories *****************************************************************
" Setup backup location and enable
"set backupdir=~/backup/vim
"set backup

" Set Swap directory
"set directory=~/backup/vim/swap

" Sets path to directory buffer was loaded from
autocmd BufEnter * lcd %:p:h


" File Stuff ******************************************************************
filetype plugin indent on
" To show current filetype use: set filetype

" autocmd FileType html :set filetype=xhtml " we couldn't care less about html


" Inser New Line **************************************************************
map <S-Enter> O<ESC> " awesome, inserts new line without going into insert mode
map <Enter> o<ESC>
set fo-=r " do not insert a comment leader after an enter, (no work, fix!!)


" Sessions ********************************************************************
" Sets what is saved when you save a session
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize


" Misc ************************************************************************
set backspace=indent,eol,start
set number " Show line numbers
set matchpairs+=<:>
set virtualedit=all

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.o,*.obj,.git,.hg,*.beam,*.pyc,*.so,*.class
" set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep"

set nobackup
set noswapfile

" Invisible characters *********************************************************
set listchars=trail:.,tab:>-,eol:$,tab:>.,trail:.,extends:#,nbsp:.
" set list
set nolist
:noremap ,i :set list!<CR> " Toggle invisible chars


" Mouse ***********************************************************************
"set mouse=a " Enable the mouse
"behave xterm
"set selectmode=mouse


" Cursor Movement *************************************************************
" Make cursor move by visual lines instead of file lines (when wrapping)
"map <up> gk
"map k gk
"imap <up> <C-o>gk
"map <down> gj
"map j gj
"imap <down> <C-o>gj
"map E ge

map <Leader>p <C-^> " Go to previous file
map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k

"Automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e


" Omni Completion *************************************************************
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,hjs setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags




" -----------------------------------------------------------------------------
" |                              Plug-ins                                     |
" -----------------------------------------------------------------------------
" BufExplorer ********************************************************************
:noremap <leader>f :BufExplorer<CR>

" NERDTree ********************************************************************
:noremap <leader>n :NERDTreeToggle<CR>

" User instead of Netrw when doing an edit /foobar
let NERDTreeHijackNetrw=1

" Single click for everything
" let NERDTreeMouseMode=1

let NERDTreeIgnore=['\.git$', '\.svn$', '\~$', '\.pyc$', '\.beam$', '\.gz$']

" SnippetsEmu *****************************************************************
"imap <unique> <C-j> <Plug>Jumper
"let g:snip_start_tag = "_\."
"let g:snip_end_tag = "\._"
"let g:snip_elem_delim = ":"
"let g:snip_set_textmate_cp = '1'  " Tab to expand snippets, not automatically.

" neoautocomplete ***************************************************************
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" Sparkup ********************************************************************
let g:sparkupExecuteMapping = '<c-s>'
"let g:used_javascript_libs = 'angularjs'

" jshint ********************************************************************
let jshint2_save = 1
let jshint2_close = 1
let jshint2_confirm = 1

" -----------------------------------------------------------------------------
" |                             OS Specific                                   |
" |                      (GUI stuff goes in gvimrc)                           |
" -----------------------------------------------------------------------------

" Mac *************************************************************************
"if has("mac")
  ""
"endif

" Windows *********************************************************************
"if has("gui_win32")
  ""
"endif


let g:evervim_devtoken='S=s50:U=513a93:E=14fdf780668:C=14887c6d948:P=1cd:A=en-devtoken:V=2:H=e893eee513ca128be9dd34b93eca5bf6'


" -----------------------------------------------------------------------------
" |                               Startup                                     |
" -----------------------------------------------------------------------------
" Open NERDTree on start
"autocmd VimEnter * exe 'NERDTree' | wincmd l


" -----------------------------------------------------------------------------
" |                               Host specific                               |
" -----------------------------------------------------------------------------
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
