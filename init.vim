call plug#begin(stdpath('data') . '/plugged')
   
   Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
   Plug 'morhetz/gruvbox'
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
   Plug 'vim-airline/vim-airline'
   Plug 'vim-airline/vim-airline-themes'
   Plug 'jiangmiao/auto-pairs'
   Plug 'kien/rainbow_parentheses.vim'
   Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
   Plug 'junegunn/fzf.vim'
   Plug 'preservim/nerdcommenter'
   Plug 'mattn/emmet-vim'
   Plug 'airblade/vim-gitgutter'
   Plug 'tpope/vim-fugitive'
   
call plug#end()
 
set nu rnu
colorscheme gruvbox
set hidden
 
" set guifont=Inconsolata\ for\ Powerline:h15
" let g:Powerline_symbols = 'fancy'
 
let g:airline_powerline_fonts=1
 
let mapleader = ","
let g:javascript_plugin_jsdoc = 1
 
" nerdtree settings
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
 
nnoremap <leader><leader> :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
 
nnoremap <silent> <C-p> :Files<CR>
 
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
 
nnoremap <leader><tab> :bnext<CR>
nnoremap <leader><s-tab> :bprevious<CR>
 
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key=','
autocmd FileType html,css EmmetInstall
 
autocmd FileType javascript,typescript setlocal shiftwidth=2 tabstop=2
 
inoremap <silent><expr> <c-space> coc#refresh()
