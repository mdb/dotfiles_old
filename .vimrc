" Indents and Tabs
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
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
set nobackup "no backup
set noswapfile "no swap file
" set mouse=a
set mouse=niv
set background=dark

filetype plugin on
syntax on
colorscheme acidcupcake

au BufNewFile,BufRead *.rhtml set syn=eruby "Ruby HTML
au BufNewFile,BufRead *.ftl set syn=ftl "Freemarker
au BufNewFile,BufRead *.pde set syn=pde "Processing
au BufNewFile,BufRead Rakefile set syn=ruby "Ruby
au BufNewFile,BufRead *.ru set syn=ruby "Rack up
au BufNewFile,BufRead Gemfile set syn=ruby
au BufNewFile,BufRead Vagrantfile set syn=ruby
au BufNewFile,BufRead *.json set syn=javascript "JSON

nmap <silent> ,/ :nohlsearch<CR> "Clear search highlighting with ,/
map <C-l> :tabn<CR> "Control-l to navigate to the next tab
map <C-h> :tabp<CR> "Control-h to navigate to the next tab
map <C-n> :tabnew<CR> "Control-n to open new tab
vmap <C-x> :!pbcopy<CR> "Control-x from visual mode to cut and copy to clipboard
vmap <C-c> :w !pbcopy<CR><CR> "Control-c from visual mode to copy to clipboard

" Pathogen support
execute pathogen#infect()

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
