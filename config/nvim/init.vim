call plug#begin() 

Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ap/vim-css-color.git'
Plug 'https://github.com/ryanoasis/vim-devicons.git'
Plug 'https://github.com/catppuccin/nvim.git', { 'as': 'catppuccin' }
Plug 'https://github.com/sbdchd/neoformat.git'
Plug 'https://github.com/karlch/vimiv.git'

call plug#end()   

filetype plugin indent on

set relativenumber            
set number                     
set numberwidth=1   

set clipboard=unnamedplus
syntax on

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set smarttab
set smartindent

set mouse=a

set hlsearch
set incsearch

"NERTtree plugin"
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if winnr("$") == 1 && exists("b:NERDTree") | quit | endif

"Neofermat for Prettier"
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_typescript = ['prettier']
let g:neoformat_enabled_json = ['prettier']
let g:neoformat_enabled_html = ['prettier']
let g:neoformat_enabled_css = ['prettier']


"Theme"
colorscheme catppuccin-mocha

"Hotkey"
nnoremap <C-s> :w<CR>:Neoformat<CR>

nnoremap <C-r> :NERDTreeToggle<CR>
nnoremap <C-e> :NERDTreeFocus<CR>

nnoremap <A-1> :tabn 1<CR>
nnoremap <A-2> :tabn 2<CR>
nnoremap <A-3> :tabn 3<CR>
nnoremap <A-4> :tabn 4<CR>
nnoremap <A-5> :tabn 5<CR>
nnoremap <A-6> :tabn 6<CR>
nnoremap <A-7> :tabn 7<CR>
nnoremap <A-8> :tabn 8<CR>
nnoremap <A-9> :tabn 9<CR>
nnoremap <A-0> :tabn 10<CR>
