"cs a /new2/stin.shen/git/K7/g_nds_directtv_dvb_ddi/cscope.out
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible " VIM 不使用和 VI 相容的模式
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Plugin 'chriskempson/base16-vim'
Plugin 'morhetz/gruvbox'
Plugin 'dracula/vim'

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set mouse=a		" Enable mouse usage (all modes)
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

"set guifont=Monaco:h12
set guifont=hack:h13
"colorscheme wombat256
"colorscheme molokai
set background=dark
"colorscheme hybrid
"let base16colorspace=256  " Access colors present in 256 colorspace
"colorscheme base16-default-dark
colorscheme gruvbox

set shiftwidth=4 " 設定縮排寬度 = 4
set tabstop=4    " tab 的字元數
set softtabstop=4
set expandtab    " 用 space 代替 tab
set smartindent  " 設定 smartindent
set ic           " 設定搜尋忽略大小寫
set confirm      " 操作過程有衝突時，以明確的文字來詢問
set nu           " 顯示行號

set listchars=tab:>.,trail:~,extends:>,precedes:<
set list
set t_Co=256

set ignorecase
set nu

highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/ 

"nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <silent> <F12> :BufExplorer<CR>

" Open and close all the three plugins on the same time
nmap <F11> :TrinityToggleAll<CR>
" Open and close the srcexpl.vim separately
nmap <F8> :TrinityToggleSourceExplorer<CR>
" Open and close the taglist.vim separately
nmap <F7> :TrinityToggleTagList<CR>
" Open and close the NERD_tree.vim separately
nmap <F6> :TrinityToggleNERDTree<CR>

"切換前一個/後一個Buffer
nmap <C-l> :bn<CR> 
nmap <C-h> :bp<CR>

nnoremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nnoremap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nnoremap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"設定Tlist寬度
let Tlist_WinWidth=48

"paste multiple times
xnoremap p pgvy

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
syntax on
set hlsearch     " 設定高亮度顯示搜尋結果

" Highlight trailing space
match Error /\s\+$/

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

