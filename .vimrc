set history=700
filetype plugin on
set nocompatible
set ruler
set number
set backspace=eol,start,indent

set ignorecase

set hlsearch

set incsearch

set list listchars=tab:>-,trail:.,extends:>
set list
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

set autoindent 
set cindent
set t_Co=256
syntax on
colorscheme torte

highlight LineNr ctermbg=none ctermfg=darkgrey
highlight Comment cterm=bold ctermfg=blue cterm=bold
highlight Statement cterm=bold ctermfg=darkyellow cterm=bold
highlight Normal ctermbg=none ctermfg=none

set wildmode=longest,list,full
set wildmenu

map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>v :vsplit <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>s :split <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>r :r <C-R>=expand("%:p:h") . "/" <CR>

autocmd BufNewFile,BufRead *.ts  set syntax=javascript


function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

function! White()
  highlight Normal ctermbg=none ctermfg=none
endfunction
function! Red()
  highlight Normal ctermbg=none ctermfg=130
endfunction

set dictionary="/usr/share/dict/american-english"
