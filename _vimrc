set rtp+=$vim/vimfiles/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/calendar-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'dracula/vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'wsdjeg/vim-galore-zh_cn'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Shougo/unite.vim'
Plugin 'junegunn/vader.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'scrooloose/nerdtree'
Plugin 'posva/vim-vue'
Plugin 'tpope/vim-commentary'
Plugin 'gaving/vim-textobj-argument'
Plugin 'vim-scripts/c.vim'
Plugin 'majutsushi/tagbar'
Plugin 'junegunn/vim-easy-align'
" 第五页
call vundle#end()

nmap <f8> :TagbarToggle<cr>


" Vim
let g:indentLine_color_term = 239
"
" " GVim
"" let g:indentLine_color_gui = '#A4E57E'
"
" " none X terminal
 let g:indentLine_color_tty_light = 7 " (default: 4)
 let g:indentLine_color_dark = 1 " (default: 2)
"
" " Background (Vim, GVim)
let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'


let g:indentLine_char = '|'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2

let g:indentLine_setConceal = 0
let g:indentLine_enabled = 0



"akds解决中文乱码问题，但会产生其它问题
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8



execute pathogen#infect()


"set guioptions-=m
"set guioptions-=T



let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
"augroup javascript_folding 
" au!
" au FileType javascript setlocal foldmethod = syntax 
"augroup END

augroup javascript_folding
	au!
	au FileType javascript setlocal foldmethod=syntax
augroup END



"let g:javascript_conceal_function             = "f"
"let g:javascript_conceal_null                 = "n"
"let g:javascript_conceal_this                 = "@"
"let g:javascript_conceal_return               = "#"
"let g:javascript_conceal_undefined            = "$"
"let g:javascript_conceal_NaN                  = "%"
"let g:javascript_conceal_prototype            = "^"
"let g:javascript_conceal_static               = "&"
"let g:javascript_conceal_super                = "**"
"let g:javascript_conceal_arrow_function       = "~"
"let g:javascript_conceal_noarg_arrow_function = "~~"
"let g:javascript_conceal_underscore_arrow_function = "~~~"
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "r"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "N"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"



set conceallevel=1
map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>



syntax on
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2

source $VIMRUNTIME/defaults.vim
colorscheme solarized
set wrap
set noundofile
set nobackup
set noswapfile
set nu

let mapleader=" "

"nnoremap <c-f2> :w<cr>:!tsc %<cr>
"nnoremap <c-f1> :!node hello.js<cr>
vnoremap ' o<esc>i'<esc>gvol<esc>a'
vnoremap " o<esc>i"<esc>gvol<esc>a"
vnoremap ( o<esc>i(<esc>gvol<esc>a)
vnoremap [ o<esc>i[<esc>gvol<esc>a]
vnoremap { o<esc>i{<esc>gvol<esc>a}
""inoremap < <><esc>i"
""inoremap ` ``<esc>i
""inoremap ( ()<esc>i
""inoremap [ []<esc>i
""inoremap <leader>{ {<cr>}<esc>O
""inoremap { {}<left>
""inoremap " ""<esc>i
""inoremap ' ''<esc>i
inoremap <tab> <right>
nnoremap ; "ayiwb/<c-R>a<cr>
inoremap func function
"inoremap <cr> <cr><esc>O
inoremap <leader><esc> <esc>==
inoremap <M-n> <C-n>
inoremap <M-p> <C-p>
inoremap cg console.log()<esc>i
nnoremap <c-k> dd2kp
nnoremap <c-j> ddp
nnoremap <c-f5> :silent !hello.exe<cr>
inoremap <S-cr> <esc>:normal ,<cr>i
inoremap <M-m> <esc>:normal n<cr>a
inoremap <M-M> <esc>:normal N<cr>a
nnoremap <M-m> :normal n<cr>a
nnoremap <M-M> :normal N<cr>a
nnoremap <c-w>' viwb<esc>i'<esc>ea'
nnoremap <s-w> :vsp<cr>:e .<cr>
noremap <s-t> :sp<cr>:e .<cr>
nnoremap <c-f2> :w<cr>:silent !%<cr>
nnoremap <c-f3> :wa<cr>:!test.html<cr>
nnoremap <f2> :NERDTree<cr>
nnoremap <f3> :NERDTreeFind<cr>
nnoremap <f5> :NERDTreeToggle<cr>
nnoremap // I<!--<esc>A-->
inoremap dt document
inoremap wt write()<esc>i
iabbr wid width
iabbr hei height
iabbr gbi getElementById
iabbr gbn getElementsByName
iabbr gbt getElementsByTagName
iabbr ael addEventListener("click",functionname(){});
iabbr rel removeEventListener("click",functionname(){});
iabbr ce createElement("p");
iabbr ctn createTextNode("string");
iabbr ac appendChild(node);
iabbr rc removeChild(child);
iabbr ib insertBefore(newNode,child);
iabbr ia insertAfter(newNode,child);
iabbr setI setInterval
inoremap with with(document){<cr>}<esc>O
nnoremap f> f>i 
inoremap <leader><html> <html></html><esc>cit<cr><head></head><cr><script></script><cr><body></body><cr>
nnoremap <tab> /\<[a-z]*="\\|\<[a-z]\+=[0-9]\+%<cr>
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
"nnoremap <tab> /a\\|b<cr>
" nnoremap <S-Tab> ?\<[a-z]*="<cr>
nnoremap <S-Tab> ?\<[a-z]*="\\|\<[a-z]\+=[0-9]\+%<cr>
nnoremap vii f"vi"
nnoremap cii f"ci"
nnoremap dii f"di"
nnoremap daa 2df"
nnoremap caa 2cf"
nnoremap vaa 2vf"
nnoremap dfd $?function<cr>$<s-v>%d





set smartindent
set cursorline
hi VertSplit guibg=red
set guifont=Consolas:h10:i
set diffexpr=MyDiff()
set nu
set hlsearch





function! MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction



