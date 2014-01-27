version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> <MiddleMouse>
map <S-Insert> <MiddleMouse>
let &cpo=s:cpo_save
unlet s:cpo_save
let g:pydiction_location = '~/.vim/after/ftplugin/complete-dict'
if has("gui_running")
  highlight SpellBad term=underline gui=undercurl guisp=palegreen
  if has("gui_gtk2")
      set guifont=DejaVu\ Sans\ Mono\ 9
  endif
endif
" infect with pathogen
filetype off
set nocp
runtime bundle/pathogen/autoload/pathogen.vim
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vimcurrent,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
"colors xoria256
colors molokai
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
let mapleader = ","

noremap <F1> <ESC>
" Toggle line numbering
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
" toggle NERDTree
nnoremap <F3> :NERDTreeToggle<cr>
" find current file in NERDTree
nnoremap <F4> :NERDTreeFind<cr>
" toggle Gundo
nnoremap <F5> :GundoToggle<cr>
" run Pep8
let g:pep8_map='<F6>'

nnoremap <F9> :SyntasticCheck
nnoremap <F10> :Errors
"
" remove newlines
nnoremap <leader>j a<CR><Esc>k$
" switch off hilighting
nnoremap <leader><space> :noh<cr>
" reformat paragraph
nnoremap <leader>q gqip
" cleanup trailing spaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" copy to X copy buffer
nnoremap <leader>y "+y
" jump to next/prev change and center screen
nnoremap <leader>[ [czz
nnoremap <leader>] ]czz
nnoremap <c-p> :bp<cr>
nnoremap <c-n> :bn<cr>
nnoremap <c-tab> <c-w><c-w>
" close buffer without closing window
nmap ,d :b#<bar>bd#<CR>
" autowrite on focus loss
au FocusLost * :wa


" `gf` jumps to the filename under the cursor.  Point at an import statement
" and jump to it!
python << EOF
import os
import sys
import vim
for p in sys.path:
    if os.path.isdir(p):
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF

let g:NERDTreeIgnore = ['\~$', '\.pyc$', '\.pyo$']
let pymode_rope_vim_completion=1

python << EOF
import sys
sys.path.append('/home/asosnin/.vim/ftplugin/python/ropevim/')
EOF
source ~/.vim/ftplugin/python/ropevim/ropevim.vim

au BufNewFile,BufRead *.tac set filetype=python
set autoindent
set backspace=indent,eol,start
if exists('+colorcolumn')
  set colorcolumn=110
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
  highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
  match OverLength /\%>80v.\+/
endif

if has("python") && !empty($VIRTUAL_ENV)
python << EOF
import os
import sys
a = os.environ['VIRTUAL_ENV'] + '/bin/activate_this.py'
execfile(a, dict(__file__ = a))
if 'PYTHONPATH' not in os.environ:
    os.environ['PYTHONPATH'] = ''
    os.environ['PYTHONPATH'] += ":"+os.getcwd()
    os.environ['PYTHONPATH'] += ":".join(sys.path)
EOF
endif

set clipboard=unnamed
set encoding=utf-8
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set foldlevel=99
set foldmethod=indent
set formatoptions=qrn1
set guioptions=tei " no scrollbar
set guioptions-=mlLlTt  "remove toolbar
set guioptions+=A
set gdefault
set helplang=en
set history=1000
set history=50
set hlsearch
set incsearch
set ignorecase
set modeline
set modelines=5
set mouse=a
set nocompatible
"set nomodeline
set number
set printoptions=paper:a4
set ruler
set scrolloff=3
set shiftwidth=4
set showcmd
set showmatch
set showmode
set smartcase
set softtabstop=4
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set syntax=auto
set tabstop=4
set termencoding=utf-8
set title
set ttyfast
"set visualbell " too distracting!
set wildmenu
set wildmode=list:longest
set window=51
set wrap
call pathogen#infect()
syntax on
filetype plugin indent on
" vim: set ft=vim :
