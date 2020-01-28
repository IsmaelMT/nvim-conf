"""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
" let MRU_Max_Entries = 400
" map <leader>f :MRU<CR>


""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
" nmap <c-p> <Plug>yankstack_substitute_older_paste
" nmap <c-P> <Plug>yankstack_substitute_newer_paste


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
nnoremap <F2> :NERDTreeToggle<cr>
nnoremap <leader>nb :NERDTreeFromBookmark
nnoremap <leader>nf :NERDTreeFind<cr>
map <leader>nr :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimwiki configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimwiki_list = [{
\ 'path': '~/vimwiki/', 
\ 'path_html': '~/vimwiki_html/', 
\ 'auto_export': 1,
\ 'syntax': 'markdown', 'ext': '.wiki'}]


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline_powerline_fonts = 1
let g:airline_theme='dracula'
let g:airline_left_sep = "\uE0D2"
let g:airline_right_sep = "\uE0D4"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F5> :Gblame<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-instant-markdown preview
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>md :MarkdownPreview<CR>

" " set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 1

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 1

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 1

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {}
    \ }

" use a custom markdown style must be absolute path
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>
let g:autotagTagsFile="tags"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"search project files
nnoremap <leader>p :FZF<cr>
"search project files by lines of code
nnoremap <leader>o :Lines<cr>
"search project files by tags (requirs ctags to be installed)
nnoremap <leader>t :Tags<cr>
"search all open files/buffers
nnoremap <leader>r :Buffers<cr>

"start a search query
nnoremap <C-s> :Ag<cr>
nmap <C-s>s :Ag <C-R><C-W><CR>
nnoremap <leader>S :Ag! <C-R><C-W><cr>
nmap <leader>T :Tags <C-R><C-W><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" In ~/.vim/vimrc, or somewhere similar.
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8']
\}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pythonsense
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" TODO: fix the mappings
" map <buffer> ac <Plug>(PythonsenseOuterClassTextObject)
" map <buffer> ic <Plug>(PythonsenseInnerClassTextObject)
" map <buffer> af <Plug>(PythonsenseOuterFunctionTextObject)
" map <buffer> if <Plug>(PythonsenseInnerFunctionTextObject)
" map <buffer> ad <Plug>(PythonsenseOuterDocStringTextObject)
" map <buffer> id <Plug>(PythonsenseInnerDocStringTextObject)

" map <buffer> ]] <Plug>(PythonsenseStartOfNextPythonClass)
" map <buffer> ][ <Plug>(PythonsenseEndOfPythonClass)
" map <buffer> [[ <Plug>(PythonsenseStartOfPythonClass)
" map <buffer> [] <Plug>(PythonsenseEndOfPreviousPythonClass)
" map <buffer> ]m <Plug>(PythonsenseStartOfNextPythonFunction)
" map <buffer> ]M <Plug>(PythonsenseEndOfPythonFunction)
" map <buffer> [m <Plug>(PythonsenseStartOfPythonFunction)
" map <buffer> [M <Plug>(PythonsenseEndOfPreviousPythonFunction)

" map <buffer> g: <Plug>(PythonsensePyWhere)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlsf - Search and edit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap     <leader>f <Plug>CtrlSFPrompt
vmap     <leader>f <Plug>CtrlSFVwordPath
vmap     <leader>F <Plug>CtrlSFVwordExec
nmap     <leader>fn <Plug>CtrlSFCwordPath
nmap     <leader>fp <Plug>CtrlSFPwordPath
nnoremap <leader>fo :CtrlSFOpen<CR>
nnoremap <leader>ft :CtrlSFToggle<CR>
inoremap <leader>ft <Esc>:CtrlSFToggle<CR>

let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_ackprg = 'ag'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Black 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:black_linelength = 120
let g:black_virtualenv = '~/.local/share/nvim/black'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COC 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

source ~/.config/nvim/vimrcs/coc.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabular 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>= :Tabularize /=<CR>
vmap <Leader>= :Tabularize /=<CR>
nmap <Leader>: :Tabularize /:\zs<CR>
vmap <Leader>: :Tabularize /:\zs<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gutentags 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:gutentags_add_default_project_roots = 0
" let g:gutentags_project_root  = ['package.json', '.git', '.hg', '.svn']
" let g:gutentags_cache_dir = expand('~/.gutentags_cache')
let g:gutentags_exclude_filetypes = ['gitcommit', 'gitconfig', 'gitrebase', 'gitsendemail', 'git']
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_ctags_extra_args = ['--tag-relative=yes', '--fields=+ailmnS']
let g:gutentags_ctags_exclude = [
\  '*.git', '*.svn', '*.hg',
\  'cache', 'build', 'dist', 'bin', 'node_modules', 'bower_components',
\  '*-lock.json',  '*.lock',
\  '*.min.*',
\  '*.bak',
\  '*.zip',
\  '*.pyc',
\  '*.class',
\  '*.sln',
\  '*.csproj', '*.csproj.user',
\  '*.tmp',
\  '*.cache',
\  '*.vscode',
\  '*.pdb',
\  '*.exe', '*.dll', '*.bin',
\  '*.mp3', '*.ogg', '*.flac',
\  '*.swp', '*.swo',
\  '.DS_Store', '*.plist',
\  '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png', '*.svg',
\  '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2',
\  '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx', '*.xls',
\]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python-imports 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F3>   : ImportName<CR>
map <C-F3> : ImportNameHere<CR>
