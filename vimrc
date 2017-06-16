call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'qpkorr/vim-bufkill'

" Auto closing
" Plug 'Raimondi/delimitMate'
Plug 'jiangmiao/auto-pairs'

" Indent guides
Plug 'Yggdroot/indentLine'

" Js
Plug 'pangloss/vim-javascript'
" Scss
Plug 'tpope/vim-haml'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

" Theme
Plug 'junegunn/seoul256.vim'
Plug 'NLKNguyen/papercolor-theme'
" Initialize plugin system
call plug#end()

let mapleader = ","

" Theme: seoul
"
" let g:seoul256_background = 256
" colo seoul256
" set background=light

" Theme: papercolor
"
set t_Co=256   " This is may or may not needed.
set background=light
colorscheme PaperColor

" Show error trailing whitespace
match ErrorMsg '\s\+$'

map <leader>t :NERDTreeToggle<CR>

" FZF
"
map <leader>s :FZF<CR>
map <leader>f :Ag<CR>
map <leader>d :Buffers<CR>

" Indent
"
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" " when indenting with '>', use 4 spaces width
set shiftwidth=2
" " On pressing tab, insert 4 spaces
set expandtab
set smartindent

" Swap files
set nobackup
set nowritebackup
set noswapfile

" Do not copy when delete
nnoremap d "_d
vnoremap d "_d

" Edit and Reload .vimrc
nnoremap gev :e $MYVIMRC<CR>
nnoremap gsv :so $MYVIMRC<CR>

vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Marko Js
autocmd BufNewFile,BufRead *.marko   set syntax=html

"
" Easy Motion
"
hi EasyMotionTarget ctermbg=none ctermfg=red
hi EasyMotionShade  ctermbg=none ctermfg=blue

hi EasyMotionTarget2First ctermbg=none ctermfg=red
hi EasyMotionTarget2Second ctermbg=none ctermfg=red

hi EasyMotionMoveHL ctermbg=green ctermfg=black
hi EasyMotionIncSearch ctermbg=green ctermfg=black

"
" Pane
"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Move
noremap <S-K> 5k
noremap <S-J> 5j

"
" Buffers
"
noremap gn :bn<cr>
noremap gp :bp<cr>
noremap gd :bd<cr>
noremap <leader>b :bufdo bd<CR>

" Select all
map <C-a> <esc>ggVG<CR>

"
" NERD Commenter
"
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

