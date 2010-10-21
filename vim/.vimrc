" Indent
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
"set expandtab
"set showmatch " show () {} and [] matches while writing.
set showcmd " show the unfinished command-mode command
set ruler " put meaningful information in the bottom line of your window
set ignorecase "ignore case in searches
" filetype on
filetype plugin on
syntax on

" Line numbers
set nu 

" Source the vimrc file after saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Ruby HTML
au BufNewFile,BufRead *.rhtml set syn=eruby

" Freemarker
au BufNewFile,BufRead *.ftl set syn=ftl

" Processing
au BufNewFile,BufRead *.pde set syn=pde

" Jquery (does this even work?)
au BufRead,BufNewFile *.js set ft=javascript syn=jquery
