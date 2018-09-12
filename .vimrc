set nocompatible              " be iMproved, required filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'fatih/molokai'
Plugin 'Raimondi/delimitMate' 
Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } 
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plugin 'zchee/deoplete-go', { 'do': 'make'}
else
  "Plugin 'Shougo/deoplete.nvim'
  "Plugin 'roxma/nvim-yarp'
  "Plugin 'roxma/vim-hug-neovim-rpc'
endif
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let mapleader=','
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set showmatch
set backspace=2
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax enable
set termguicolors
let g:onedark_termcolors=256
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai 


let g:deoplete#enable_at_startup = 1


let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
"let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"

autocmd FileType go nmap <Leader>i <Plug>(go-info)
autocmd FileType go nmap <Leader>d :GoDecls<CR>
set updatetime=500
let g:go_autodetect_gopath = 1 

set cursorline
let mapleader = "," 
nmap <S-f> <C-f> 
nmap <S-b> <C-b>
nmap <S-e> <C-e>
nmap <S-y> <C-y>
nmap <S-d> <C-d>
nmap <S-u> <C-u>
nmap <S-t> <C-t>

let delimitMate_expand_cr = 1

" deoplete 
let g:deoplete#enable_at_startup = 1
let g:deoplete#source#go#gocode_binary = '/Users/heweidong/go/bin/gocode'
let g:deoplete#source#go#sort_class = ['package', 'func', 'type', 'var', 'const']


" nerd tree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" jedi-vim
let g:jedi#auto_initialization = 0
let g:jedi#show_call_signatures = "1"
"let g:jedi#goto_command = "<leader>d"
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = ""
"let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<C-Space>"
"let g:jedi#rename_command = "<leader>r"

