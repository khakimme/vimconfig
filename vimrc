" Try to load minpac.
packadd minpac

if !exists('g:loaded_minpac')
  " minpac is not available.

  " Settings for plugin-less environment.
else
  " minpac is available.
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  call minpac#add('morhetz/gruvbox')
  call minpac#add('preservim/nerdtree')
  call minpac#add('Xuyuanp/nerdtree-git-plugin')
  call minpac#add('tiagofumo/vim-nerdtree-syntax-highlight')
  call minpac#add('jiangmiao/auto-pairs')
  call minpac#add('prettier/vim-prettier', { 'do': 'yarn install' })
  call minpac#add('kien/ctrlp.vim')
  call minpac#add('pangloss/vim-javascript')
  call minpac#add('airblade/vim-gitgutter')
  call minpac#add('mattn/emmet-vim')
  call minpac#add('honza/vim-snippets')
  call minpac#add('itchyny/lightline.vim')
  call minpac#add('preservim/nerdcommenter')
  call minpac#add('neovimhaskell/haskell-vim')
  call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
  call minpac#add('easymotion/vim-easymotion')
  call minpac#add('eraserhd/parinfer-rust')
  call minpac#add('wlangstroth/vim-racket')
  call minpac#add('SirVer/ultisnips')
  call minpac#add('honza/vim-snippets')
  
  " Minpac utility commands
  command! PackUpdate call minpac#update()
  command! PackClean call minpac#clean()
  command! PackStatus call minpac#status()
endif


let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

if !has('gui_running')
  set t_Co=256
endif

set ttyfast
set lazyredraw

let g:NERDTreeIgnore = ['^node_modules$']
let g:mapleader = ','
map <Leader> <Plug>(easymotion-prefix)

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

colorscheme gruvbox
set termguicolors     " enable true colors support

" These lines make vim load various plugins
filetype on
filetype indent on
filetype plugin on

set background=dark
set number
set ignorecase
set mouse=a
set cursorline
set nowrap
set nobackup
set nowritebackup
set nowb 
set noswapfile
set expandtab
set softtabstop=2
set shiftwidth=2
set updatetime=300

let NERDTreeShowHidden = 1

map <C-n> :NERDTreeToggle<CR>
map <C-h> :call WinMove('h')<cr>
map <C-j> :call WinMove('j')<cr>
map <C-k> :call WinMove('k')<cr>
map <C-l> :call WinMove('l')<cr>


" Window movement shortcuts
" move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y noremap <Leader>P "+p
