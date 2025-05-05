call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch' : 'release'}

Plug 'dense-analysis/ale'

Plug 'vim-scripts/indentpython.vim'

Plug 'Valloric/YouCompleteMe'

call plug#end()

autocmd BufNewFile,BufRead *.odin set filetype=odin

colorscheme ron
syntax on
set termguicolors
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE
set number
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set mouse=a

let g:ale_linters = {'odin' : ['odin']}
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_save = 1

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> K  <Plug>(coc-hover)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


