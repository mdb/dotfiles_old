" Indents and Tabs
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Misc
set showcmd "show the unfinished command-mode command
set showmode "show me when I'm in overtype/insert mode
set ruler "put meaningful information in the bottom line of your window
set ignorecase "ignore case in searches
set nu "Display line numbers
set showmatch "show () {} and [] matches while writing.
set ofu=syntaxcomplete#Complete "Omnicomplete
set spelllang=en_us	"spell check english
set hlsearch "highlight all matches in search when searching	
set nowrap "don't wrap text
set wildmenu "magic completion at : command line	

filetype plugin on
syntax on

" Source the vimrc file after saving it
" Commented here so I can make repo edits without sourcing $MYVIMRC  
" if has("autocmd")
"		autocmd bufwritepost .vimrc source $MYVIMRC
" endif

au BufNewFile,BufRead *.rhtml set syn=eruby "Ruby HTML
au BufNewFile,BufRead *.ftl set syn=ftl "Freemarker
au BufNewFile,BufRead *.pde set syn=pde "Processing
au BufRead,BufNewFile *.js set ft=javascript syn=jquery "JavaScript (does this jQuery thing even work?)
