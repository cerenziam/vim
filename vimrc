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
"Plugin 'raimondi/delimitmate'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'lervag/vimtex' 
Plugin 'kshenoy/vim-signature'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'easymotion/vim-easymotion'
Plugin 'ludovicchabant/vim-gutentags'

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

" These are highly recommended options.
filetype indent plugin on
syntax on
set hidden  
" Better command-line completion
set wildmenu
" Show partial commands in the last line of the screen
set showcmd
" Highlight searches (use <leader>h to temporarily turn off highlighting; see the
" mapping of <leader>h below)
set hlsearch 

set ignorecase
set smartcase
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm 
" Use visual bell instead of beeping when doing something wrong
"set visualbell 
" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue"
set cmdheight=2
set encoding=utf-8
set number 
set updatetime=250 
set splitbelow

"some nice key remappings
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"
nnoremap <leader>s :w<cr>
noremap <leader>q :q<cr>
inoremap jk <ESC>

"the next are some I'm not sold on
nmap <S-Enter> O<Esc> "" why doesn't this work??? I read that it's a persistent problem. 
nmap <CR> o<Esc>  ""you can't "push" text to the next line without entering insert mode! 
inoremap {<CR> {<CR>}<Esc>ko  "" not so sold on keeping this one
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
" Map <leader>h (redraw screen) to also turn off search highlighting 
nnoremap <leader>h :nohl<CR>
"some mappings concerning macros
"macros even easier to remember: hit qq to record, q to stop recording, and Q to apply.
"This mapping also allows you to play macros across a visual selection with Q
nnoremap Q @q
vnoremap Q :norm @q<cr>
noremap <leader>a =ip
"mappings concerning moving between tabs
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
" split screen  and split-vertical
noremap <C-s> <C-w>s
noremap <C-v> <C-w>v
"color schemes

"change colors of forground and background of popup menu menu (actually a plain Vim property)
hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE
highlight PMenuSBar  ctermbg=red   ctermfg=white
highlight PMenuThumb ctermbg=white ctermfg=red
hi MatchParen ctermbg=5 
set background=dark

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
highlight YcmErrorSection guibg=#ccff00 
highlight YcmWarningSection guibg=#ccff00
highlight YcmErrorLine guibg=#ccff00 
highlight YcmWarningLine guibg=#ccff00
highlight YcmErrorSection ctermbg=109
highlight YcmWarningSection ctermbg=109

"some snippet stuff
" make YCM compatible with UltiSnips (using supertab)
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
	
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"  

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"" vimtex...For skim, backward search occurs with shift+cmd+mouseclick
""to perform bibliography searches after \cite{ , press <CTRL-X><CTRL-O> 
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
let g:vimtex_view_general_options_latexmk = '-r' 
let g:vimtex_fold_enabled = 0
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
  endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme


" This adds a callback hook that updates Skim after compilation
let g:vimtex_compiler_callback_hooks = ['UpdateSkim']
function! UpdateSkim(status)
  if !a:status | return | endif

  let l:out = b:vimtex.out()
  let l:tex = expand('%:p')
  let l:cmd = [g:vimtex_view_general_viewer, '-r']
  if !empty(system('pgrep Skim'))
    call extend(l:cmd, ['-g'])
  endif
  if has('nvim')
    call jobstart(l:cmd + [line('.'), l:out, l:tex])
  elseif has('job')
    call job_start(l:cmd + [line('.'), l:out, l:tex])
  else
    call system(join(l:cmd + [line('.'), shellescape(l:out), shellescape(l:tex)], ' '))
  endif
endfunction 

""Settings for Tagbar
nnoremap <silent> <F9> :TagbarToggle<CR> 
let g:tagbar_ctags_bin = '/usr/local/Cellar/universal-ctags/HEAD-d9944ef/bin/ctags' 

""This let's me have cool colors for macvim 
if has("gui_running")
  syntax on
  set hlsearch
  colorscheme solarized 
  set bs=2
  set ai
  set ruler
endif 

"" Mouse support
set mouse=a
