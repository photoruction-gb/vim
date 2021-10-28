call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'jreybert/vimagit'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'RRethy/vim-illuminate'
Plug 'yegappan/taglist'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-vdebug/vdebug'
Plug 'embear/vim-localvimrc'
call plug#end()

" DEFAULT CONFIG

set number
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
syntax on
set listchars=tab:>\ ,trail:+
set hlsearch

" CUSTOM CONFIG
" General stuff
set mouse=r
set ttyfast
set ttimeout
set ttimeoutlen=50
set showcmd
set wildmenu
set path+=**
set wildmode=longest:full,full
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set hidden
set nowrap
set laststatus=2
set colorcolumn=80
highlight ColorColumn ctermbg=darkblue
set splitbelow
set splitright
set incsearch
set ignorecase
set smartcase
set ts=4
set shiftwidth=4
set expandtab
set background=dark
set directory=~/.vim/backup/
set backupdir=~/.vim/backup/
set tags+=.tags;/
set pastetoggle=<F2>
set diffopt+=vertical
set omnifunc=syntaxcomplete#Complete

" netrw
let g:netrw_altv = &spr
let g:netrw_alto = &sb
let g:netrw_banner = 0
let g:netrw_winsize = 50
let g:netrw_liststyle = 3
let g:netrw_preview = 0

" CtrlP
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" vim-airline
let g:airline#extensions#tabline#enabled = 0

" vim-gitgutter
if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif
set updatetime=200
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '>-'
let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg=black
highlight SignColumn ctermbg=black
highlight GitGutterAdd    ctermfg=green ctermbg=blue cterm=bold
highlight GitGutterChange ctermfg=yellow ctermbg=magenta cterm=bold
highlight GitGutterDelete ctermfg=white ctermbg=red cterm=bold
highlight GitGutterChangeDelete ctermfg=yellow ctermbg=magenta cterm=bold

" Jump between hunks nmap <Leader>gn <Plug>GitGutterNextHunk  " git next
nmap <Leader>gp <Plug>GitGutterPrevHunk  " git previous
" Hunk-add and hunk-revert for chunk staging
nmap <Leader>ga <Plug>GitGutterStageHunk  " git add (chunk)
nmap <Leader>gu <Plug>GitGutterUndoHunk   " git undo (chunk)

" taglist
nnoremap <silent> <F8> :TlistToggle<CR>

" Open vimagit pane
nnoremap <leader>gs :Magit<CR>       " git status

" trim lines on save
augroup Cleanup
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e
augroup END

" localvimrc
let g:localvimrc_persistent = 1

" vdebug
if !exists('g:vdebug_options')
  let g:vdebug_options = {}
endif
let g:vdebug_options.port = 9003
let g:vdebug_options.break_on_open = 0
let g:vdebug_options.path_maps = {"/var/app/current": getcwd()}

" syntax highlighting
hi link illuminatedWord Visual
packadd matchit
set redrawtime=5000
