set nu

path+=/usr/include/arm-linux-gnueabihf/   "这个可以配置 gf 跳转头文件路径
set rtp+=/usr/bin/fzf


let g:AutoPairsMapCR = 0
imap <silent><CR> <CR><Plug>AutoPairsReturn

"set autochdir
map <l> <ctrl>
"set foldmethod=indent

set tags=./tags,tags;$HOME

set shiftwidth=2
colorscheme slate



let mapleader=","
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


nnoremap <silent> <leader>. :cd %:p:h<CR>

inoremap <tab> <right>


nmap <leader>t :TagbarToggle<cr>
"nmap <f2> :MakeWithShell<cr>
"imap <s-l> <esc>

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
"inoremap <leader><space>  <esc>
inoremap <leader><leader>  <esc>
nnoremap <leader>q :q<cr>
inoremap <leader><tab> <right>
nnoremap <c-k> <c-]>
nnoremap <c-j> <c-t>



set smartindent
set cursorline
hi VertSplit guifg=red
hi StatusLine guifg=red
set guifont=Consolas:h10:i
set diffexpr=MyDiff()
set nu
set hlsearch

map <s-Tab> :tabn<cr>




call plug#begin('~/.vim/plugged')

Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-startify'
Plug 'Rip-Rip/clang_complete'
Plug 'ervandew/supertab'


Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'

Plug 'lifepillar/vim-mucomplete'

call plug#end()

set completeopt+=noselect
let g:mucomplete#enable_auto_at_startup = 1


let g:SuperTabRetainCompletionType = 2
let g:SuperTabDefaultCompletionType = "<C-X><C-O>" 



"func SkipPair()  
"  if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'  
"    return "\<ESC>la"  
"  else  
"    return "\t"  
"  endif  
"endfunc  
"
"inoremap <TAB> <c-r>=SkipPair()<CR>
