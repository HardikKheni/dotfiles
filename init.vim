
call plug#begin(stdpath('data') . '/plugged')

	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'morhetz/gruvbox'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'vim-airline/vim-airline'
	Plug 'jiangmiao/auto-pairs'
	Plug 'kien/rainbow_parentheses.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

call plug#end()

set relativenumber
colorscheme gruvbox

let mapleader = ","

" nerdtree settings
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

nnoremap <leader><leader> :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

command! -nargs=0 Prettier :CocCommand prettier.formatFile

nnoremap <silent> <C-p> :Files<CR>

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

