# VIM cheatsheet

## Text objects

- `iw` inner word
- `aw` a word (includes surrounding spaces)
- `is` inner sentence
- `as` a sentence
- `ip` inner paragraph
- `ap` a paragraph
- `a”` a double quoted string
- `i”` inner double quoted string
- `a’` a single quoted string
- `i’` inner single quoted string
- `` a` `` a back quoted string
- `` i` `` inner back quoted string
- `a)` a parenthesized block
- `i)` inner parenthesized block
- `a]` a bracketed block
- `i]` inner bracketed block
- `at` a tag block (content between tags)
- `it` inner tag block (content between tags)
- `a>` a single tag
- `i>` inner single tag


- `[c|d]<text object>` Changes/deletes the referenced text object

### Argtextobj

- `aa` An argument
- `ia` Inner argument

## Jumps

- `:jumps` Jump list
- `%` Jump to matching delimiter
- `<C-o>` Go to previous jump
- `<C-i>` Go to next jump

## Tags

- `:tag` Jump to specified tag
- `<C-]>` Go to tag definition
- `<C-t>` Go to older tag (pop tag)
- `g;` Go to older position in the jump list

## General

- `i` Insert in cursor
- `a` Insert after cursor
- `o` Add line below and insert
- `O` Add line above and insert
- `<C-W>` Delete previus word (insert mode)
- `<C-U>` Delete everything to the left of the cursor (insert mode)
- `x` Delete current character
- `<C-h>` Delete to the left in insert mode
- `<C-l>` Delete to the right in insert mode
- `[i` show definition
- `gf` Go to file
- `:copen` Open quickfix
  - Mapped to `<C-q>`
- `<A-k>` Move line up
- `<A-j>` Move line down

## Search

- `gn` Visual select next search result
- `gN` Visual select previous search result
- `cgn` Change visual selected word from gn text object

## Vim surround

- `ysiw"` Surround a word with double quotes
- `cs"'` Change double quotes for quotes
- `csw"` Change word with double quotes
- `yss)` Surround a line with parentheses
- `ds)` Remove surround of parentheses
- `YSS{` Indent the surrounded text and place it on its own


### Visual mode

- `S"` Surround a selection with " 

## Buffer I/O

- `:w >>foo` append the whole buffer to a file
- `:.w >>foo` append current line to a file
[](-) `:$r foo` read foo into the end of the buffer
- `:0r foo` read foo into the start, moving existing lines down
- `:.,$w foo` write current line and below to a file
- `:r !ls` read ls output into cursor position
- `:w !wc` send buffer to wc and display output

## Vimsuda

- `:W` Save and ask for sudo

## Vim-repeat

- `.` Repeat the last action

## Spell

- `<leader>s` toggle spelling
- `zg` add to dictionary
- `]s` Move to the next mispelled word
- `[s` Move to the previous mispelled word


## Moving around

### Screen

- `H` Go to the highest part of the screen
- `L` Go to the lowest part of the screen
- `M` Go to the moddle of the screen
- `{` Jump to previous paragraph
- `}` Jump to next paragraph
- `g;` Go to last edit
- `<C-d>` Half page down
- `<C-u>` Half page up
- `<C-f>` Page forward
- `<C-b>` Page back

### Line

- `0` Beginning of line
- `$` End of line 

### Word

- `e` Move forward to the end of word
- `w` Move forward to the beginning of the next word
  - Mapped to `shift + arrow right`
- `b` Move backward to the beginning of the previous word
  - Mapped to `shift + arrow left`

### File

- `gg` Beginning of the file
- `G` End of the file

## Unimpaired

- `]b bnext`
- `[b bprev`
- `]Q` Last in the quickfix list
- `[Q` First in the quickfix list
- `]q cnext` (Next in quickfix list)
- `[q cprev` (Prev in quickfix list)
- `]t tnext`
- `[t tprev`
- `]<space>` Add line bellow
- `[<space>` Add line above

## Vimwiki

- `<CR>` to create/follow link
- `<leader>ww` open vinwiki
- `<Backspace>` go back one page

## Preview markdown

- `<leader>md` To preview the markdown file

## Python-sense

- `]]` Move forward to the beginning of a class
- `[[` Move backwards to the beginning of the Previous class
- `][` Move forward to the end of the class
- `[]` Move backwards to the end of the [class](class)
- `]m` Move forwards to the beginning of a function
- `[m` Move backwards to the beginning of a function
- `]M` Move forward to the end of a function
- `[M` Move backwards to the end of a function

### text objects

- `ic` Select inner class
- `ac` Select outer part and inner class
- `if` Select inner function
- `af` Select outer part and inner function
- `id` : Inner docstring text object
- `ad` : Outer docstring text object

## Vim commentary

- `gcc` Comment a line of code

### Visual mode

- `gc` Comment a block of code

## Vim fugitive

- `:Gdiff` Git diff
- `:Gbrowse` Browse in github the current file
- `:Gblame` Git blame
  - Mapped to `<F5>`

## Vim gitgutter

- `[c` Jump to next hunk 
- `]c` Jump to previous hunk
- `<leader>hs` Stage hunk
- `<leader>hu` Unstage hunk

### Visual mode

- `:Gbrowse` Browse the selected lines in github

## NERDTree

- `:NERDTreeToggle` toggles the nerd tree window.  - Mapped to `<F2>`
- `<leader>nb` :NERDTreeFromBookmark
- `<leader>nr` :NERDTreeFind

### On NERDTree open

- `<CR>` opens the file
- `s` Vertical split
- `t` Open in new tab

## Tagbar

- `<F8>` Tagbar toggle

## FZF

- `<C-s>` Fuzzy Search in files
- `<C-s>s` Fuzzy Search for the word below cursor
- `<leader>S` Fuzzy search entire screen
- `<leader>r` Fuzzy search for buffers
- `<leader>p` Fuzzy search for files 

## Tags and jumps

- `<C-]>` Jump to a tag definition
- `<C-t>` Pop the top of the tag stack
- `<C-O>` Go back one jump

## ALE

- `<C-k>` previous error/warning
- `<C-j>` next error/warning
 
## CtrlsF

- `<leader>f` Search and replace
- `o` Opens the file
- `O` Opens the file and leaves the ctrlsf window open
- `t` Opens file in a new tab
- `p` Preview
- `M` Switch window between normal and compact view
- `<C-J>` Move cursor to next match.
- `<C-K>` Move cursor to previous match.
- `<C-C>` Stop a background searching process.

## Vim tabular

- `:Tab /=` Aligns the equal signs 
  - Mapped to `<leader>=`
- `:Tab /:\zs` Aligns the content after colon(:) without the colon(:)
  - Mapped to `<leader>:`
- `:Tab /:` Aligns the colon(:) sign

## COC

- `]g` Next diagnost
- `[g` Previous diagnostic
- `gd` Go to definition
- `gy` Go to type definition
- `gi` Go to Implementation
- `gr` Go to references
- `<leader>k` Show documentation
- `<leader>rn` Rename variable
- `<leader>rf` Open refactor window
- `<leader>f` Format selected region
- `<leader>a` Action on selection
- `<leader>ac` Do codeaction
- `<leader>qf` Autofix problem of current line

### Coclist

- `<space>a` Show coclist
- `<space>e` Coclist extensions
- `<space>c` Coclist commands
- `<space>o` Coclist outline
- `<space>s` Coclist symbols
- `<space>j` Default action for next item
- `<space>j` Default action for previous item
- `<space>p` Resume latest coc list

### Snippet

- `<C-R>` Show completion tab (reload) 
- `<tab>` Navigate tab and through snippets
