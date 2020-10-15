" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

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
" Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

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
Plug 'ludovicchabant/vim-gutentags'

" Color
Plug 'danilo-augusto/vim-afterglow' 
Plug 'dylanaraps/wal.vim'

" Command line finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Async linting
" Plug 'dense-analysis/ale'

" Python sense
Plug 'jeetsukumaran/vim-pythonsense'
" Plug 'dbsr/vimpy'
Plug 'mgedmin/python-imports.vim'

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

" Displays available key bindings
Plug 'liuchengxu/vim-which-key'

" Indent lines
Plug 'Yggdroot/indentLine'

" Ranger integration
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" Fast code minimap
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}

" Code screenshot
Plug 'jmckiern/vim-shoot', { 'do': '\"./install.py\" geckodriver' }

" let Vundle manage Vundle, required
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

