set nocompatible
filetype plugin on


" Is Plug installed?
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * +PlugInstall +all | source $HOME/.vimrc
endif



""" Checks if <package> is installed.
function! s:Py3freeze(package)
    if empty(system("pip3 freeze | grep " . a:package))
        echo "Installing Package " . a:package
        execute "!pip3 install " . a:package . " --user"
    else
        echo "Found " . a:package
    endif
endfunction




"" Plugins
call plug#begin('~/.vim/plugged')
Plug 'jistr/vim-nerdtree-tabs'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'mhinz/vim-startify'
Plug 'elzr/vim-json'
Plug 'ntpeters/vim-better-whitespace'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'blueshirts/darcula'


" For C/C++ programming
Plug 'Valloric/YouCompleteMe'
Plug 'justmao945/vim-clang'


"" Deoplete
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-jedi'
"Plug 'deoplete-plugins/deoplete-jedi'
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#sources#jedi#statement_length = 5
"let g:deoplete#sources#jedi#enable_typeinfo = 0
call plug#end()


filetype plugin indent on	" required



"" Key-bindings
map <C-g>  :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <C-d> :NERDTreeToggle<CR>
map  <C-f> :tabn<CR>
map  <C-t> :tabnew<CR>


syntax enable
colorscheme darcula


let g:startify_session_dir = '~/.vim/session'

if &term =~ '256color'
  set t_ut=
endif



set wildmode=list:longest,full	" Show vim completion menu
set encoding=utf-8				" encoding
set undolevels=256				" how many times one can undo
set laststatus=2				" Display statusline
set cmdheight=1					" Height of the command bar
set history=256					" How much history to save.
set noshowmode 					" Lightline handle this
set autoindent					" copies indent from prev line, to next new line
set cursorline          		" highlight current line
set ignorecase					" Ignore case when searching.
set smartcase					" Dont ignore case if there is capitals in the search pattern
set showmatch           		" highlight matching [{()}]
set incsearch           		" search as characters are entered
set expandtab
set wildmenu            		" visual autocomplete for command men
set hlsearch            		" highlight matches
set autoread 					" checks if file has changed externally
set showcmd             		" show command in bottom bar
set number              		" show line numbers
