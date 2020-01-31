set clipboard=unnamed

" LineNumber
map <F4> :set invnumber<cr>

" Yanks
map <C-y> :YRShow<cr>

" Fix ack blink
set shellpipe=>

" Silver searcher
" let g:ackprg = 'ag --vimgrep --smart-case'
" cnoreabbrev ag Ack
" cnoreabbrev aG Ack
" cnoreabbrev Ag Ack
" cnoreabbrev AG Ack

" cnoreabbrev Ack Ack!
" nnoremap <Leader>a :Ack!<Space>

" Disable arrows

nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

" Move lines
nnoremap <C-Up> :m-2<CR>
nnoremap <C-Down> :m+<CR>
inoremap <C-Up> <Esc>:m-2<CR>
inoremap <C-Down> <Esc>:m+<CR>

nnoremap J <C-d>
nnoremap K <C-u>

imap <C-h> <Left><Del>
imap <C-l> <Del>

" Overwrite colorscheme
" augroup vimrc
"   autocmd!
"   autocmd ColorScheme * hi clear SignColumn
"   autocmd ColorScheme * hi clear TabLineFill
" augroup END

let g:afterglow_blackout=1
let g:afterglow_inherit_background=1

" Indentlines
let g:indentLine_enabled = 1
let g:indentLine_char = '|'

noremap zz :IndentLinesToggle<CR>

augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
augroup END

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Color
" set termguicolors       " enable true colors support

set background=dark     " dark theme
" set background=light  " light theme

" colorscheme quantum
colorscheme afterglow

" Spell
set spelllang=en_us

" Commands
command! RemotePdb :norm ofrom remote_pdb import RemotePdb<CR>RemotePdb('0.0.0.0', 4444).set_trace()
command! Ipdb :norm oimport ipdb; ipdb.set_trace()

" Mouse usage
set mouse=a

" Quickfix
map <C-q> :copen<CR>
