set nu

let g:AutoPairsMapCR = 0
imap <silent><CR> <CR><Plug>AutoPairsReturn

"指定tags文件，方便跳转，可以用ctrl+]来跳转
"，如果不行就g+]，因为有时候可能有多个结果
"set tags+=/home/meng/code/openssldemo/tags
set tags=./tags,tags;$HOME
"/home/meng/code/tags

set foldmethod=indent


"set tags=tags;
set autochdir
map <l> <ctrl>

syntax on
filetype plugin indent on
"set tabstop=2
""set softtabstop=2
set shiftwidth=2
colorscheme elflord

"let g:SuperTabRetainCompletionType = 2
"let g:SuperTabDefaultCompletionType = "<C-X><C-O>" 

" 通过:Man 要查询的内容
source $VIMRUNTIME/ftplugin/man.vim


let mapleader=","
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

call plug#begin('~/.vim/plugged')

Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-startify'
Plug 'kien/ctrlp.vim'
Plug 'justmao945/vim-clang'
Plug 'mattn/emmet-vim'
Plug 'ternjs/tern_for_vim'
Plug 'Rip-Rip/clang_complete'
Plug 'gaving/vim-textobj-argument'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-shell'
Plug 'vhdirk/vim-cmake'
Plug 'skywind3000/asyncrun.vim'


call plug#end()


nnoremap <silent> <leader>. :cd %:p:h<CR>

inoremap <tab> <right>
"nmap <f8> :TagbarToggle<cr>
nmap <leader>t :TagbarToggle<cr>
nmap <f2> :MakeWithShell<cr>
map L <esc>yiw:Man 3 <C-R>"<cr>

nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>

nnoremap <leader>d :bd %<cr>
nnoremap <leader>l :ls<cr>
nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>

nnoremap <leader>s :w<cr>
nnoremap vii f"vi"
nnoremap cii f"ci"
nnoremap dii f"di"
nnoremap daa 2df"
nnoremap caa 2cf"
nnoremap vaa 2vf"
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k



set smartindent
set cursorline
hi VertSplit guifg=red
hi StatusLine guifg=red
set guifont=Consolas:h10:i
set diffexpr=MyDiff()
set nu
set hlsearch

map <s-Tab> :tabn<cr>

"
"
"
"
