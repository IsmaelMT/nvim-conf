set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching brackets.
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,full   " get bash-like tab completions
set cc=120                  " set an 120 column border for good coding style

highlight clear SignColumn

" set the runtime path to include Vundle and initialize
call plug#begin('~/.config/nvim/bundle')

" Allow sudo to open readonly files. :W is rewriten in basic.vim to handle that
" :w suda://% does the trick
Plug 'lambdalisue/suda.vim'

" Allow to commend block of codes with gcc
Plug 'tpope/vim-commentary'

" Git plugin for vim
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'

" Surrounding for vim
" cs'" to change 'for "
" csw" to surround "
Plug 'tpope/vim-surround'

" Allow . to repeat command for surround, 
" speedddating, unimpaired, vim-easyclip and vim-radical
Plug 'tpope/vim-repeat'

" Vim mappings
Plug 'tpope/vim-unimpaired'

" Maintain sessions with vim
" Use :Obsess to start recording
" and :Obsess! to stop
Plug 'tpope/vim-obsession'

" Vim wiki. Use with <Leader>ww
" And to see the markdown result use <Leader>md
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" Status line configuration
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Vim devicons
Plug 'ryanoasis/vim-devicons'

" Start screen for vim
Plug 'mhinz/vim-startify' "Could add some customization

" NERDTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Tagbar
" https://github.com/majutsushi/tagbar
Plug 'majutsushi/tagbar'

" Color
Plug 'kjssad/quantum.vim'
Plug 'gkapfham/vim-vitamin-onec'

" Command line finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Async linting
Plug 'dense-analysis/ale'

" Python sense
Plug 'jeetsukumaran/vim-pythonsense'

" Search and edit
Plug 'dyng/ctrlsf.vim'

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Python black
Plug 'psf/black'

" Vim tabular
Plug 'godlygeek/tabular'

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

" Text object for function arguments
Plug 'vim-scripts/argtextobj.vim'


" let Vundle manage Vundle, required
call plug#end()

" Move lines
nnoremap <C-Up> :m-2<CR>
nnoremap <C-Down> :m+<CR>
inoremap <C-Up> <Esc>:m-2<CR>
inoremap <C-Down> <Esc>:m+<CR>

source ~/.config/nvim/vimrcs/basic.vim
source ~/.config/nvim/vimrcs/my_configs.vim
source ~/.config/nvim/vimrcs/extended.vim
source ~/.config/nvim/vimrcs/plugins_config.vim
