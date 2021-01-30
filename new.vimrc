set nu

colorscheme ron

set tabstop=2
set shiftwidth=2

set tags=./tags,tags;$HOME

let g:clang_use_library = 1
let g:clang_library_path = '/usr/lib/llvm-6.0/lib/libclang.so'

let g:AutoPairsMapCR = 0              
let mapleader=","
set autochdir
map <l> <ctrl>
nmap <leader>t :TagbarToggle<cr>
nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>

nnoremap <leader>d :bd %<cr>
nnoremap <leader>l :ls<cr>
nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k


nnoremap <leader>s :w<cr>
set cursorline

set hlsearch
set smartindent

imap <silent><CR> <CR><Plug>AutoPairsReturn

inoremap <c-l> <esc>A

call plug#begin('~/.vim/plugged')

Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-startify'
Plug 'mattn/emmet-vim'
Plug 'Rip-Rip/clang_complete'
Plug 'vim-airline/vim-airline'
Plug 'skywind3000/vim-dict'
Plug 'vim-airline/vim-airline-themes'

Plug 'lifepillar/vim-mucomplete'

"Plug 'ervandew/supertab'
"
"Plug 'lifepillar/vim-mucomplete'
"
"
""Plug 'SirVer/ultisnips'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'


call plug#end()



"let g:clang_trailing_placeholder = 1
let g:clang_snippets=1
set completeopt+=noselect
let g:mucomplete#enable_auto_at_startup = 1
""let g:clang_complete_optional_args_in_snippets=1

let g:clang_use_library=1
let g:clang_debug = 1


highlight Pmenu    guibg=darkgrey  guifg=black 
highlight PmenuSel guibg=lightgrey guifg=black

let g:vim_dict_dict = [
    \ '~/.vim/plugged/vim-dict/dict',
    \ '~/.config/nvim/dict',
		\ ]

let g:vim_dict_config = {'html':'html,javascript,css', 'txt':'cmake'}



