set nocompatible              " be iMproved, required 

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'c.vim'
Plugin 'valloric/youcompleteme' 
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'raimondi/delimitmate'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'

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


filetype plugin indent on
syntax on
set encoding=utf-8
set number 
set updatetime=250 
set splitbelow

"some nice key remappings
let mapleader = "\<Space>"
nnoremap <leader>s :w<cr>
noremap <leader>q :q<cr>
nmap <CR> o<Esc>
inoremap jk <ESC>
"not entirely sold on these next two...
nmap <S-Enter> O<Esc>
inoremap {<CR> {<CR>}<Esc>ko

"some mappings concerning macros
nnoremap Q @q
vnoremap Q :norm @q<cr>
noremap <leader>a =ip
"mappings concerning moving tabs
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-s> <C-w>s
noremap <C-v> <C-w>v
"color schemes

"change colors of forground and background of popup menu menu (actually a plain Vim property)
hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE
highlight PMenuSBar  ctermbg=red   ctermfg=white
highlight PMenuThumb ctermbg=white ctermfg=red
"syntax enable
"colorscheme monokai
"syntax enable
set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized

"Plugin Configurations
"nerdtree configurations
let g:nerdtree_tabs_open_on_gui_startup=0
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

"some C tool stuff I forget why exists
let  g:C_UseTool_cmake    = 'yes'
let  g:C_UseTool_doxygen = 'yes'

"some YCM configurations
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"" turn on completion in comments
"let g:ycm_complete_in_comments=1
"" load ycm conf by default
let g:ycm_confirm_extra_conf=0
"" turn on tag completion
let g:ycm_collect_identifiers_from_tags_files=1
"" only show completion as a list instead of a sub-window
"set completeopt-=preview
"" start completion from the first character
let g:ycm_min_num_of_chars_for_completion=1
"" don't cache completion items
let g:ycm_cache_omnifunc=0
"" complete syntax keywords
let g:ycm_seed_identifiers_with_syntax=1
"" speed to complete
let g:ycm_min_num_of_chars_for_completion = 3
"" syntax highlighting changes 
let g:ycm_allow_changing_updatetime = 0
"" change colors of syntax/warning highlighting
highlight YcmErrorSection guibg=#ffffcc 
highlight YcmWarningSection guibg=#ffffcc
highlight YcmErrorLine guibg=#ffffcc 
highlight YcmWarningLine guibg=#ffffcc
highlight YcmErrorSection ctermbg=37
highlight YcmWarningSection ctermbg=37

"some snippet stuff
" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'
 
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<cr>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"some multi cursor configs 
"let g:multi_cursor_use_default_mapping=0
 "Default mapping
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'
