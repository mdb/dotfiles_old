" -----------------------------------------------------------------------------
" | VIM Settings |
" | GUI stuff |
" -----------------------------------------------------------------------------
" OS Specific *****************************************************************
if has("gui_macvim")

" Interface stuff
  set fuoptions=maxvert,maxhorz " fullscreen options (MacVim only), resized window when changed to fullscreen
  set guifont=Monaco:h12
  set guioptions-=T "remove toolbar

elseif has("gui_gtk2")

  set guifont=Monaco
" set guioptions-=T "remove toolbar

elseif has("x11")
elseif has("gui_win32")
end

set anti "Antialias font
set gtl=%t gtt=%F "Tab headings
" Default size of window
"set columns=190
"set lines=100

" Other color schemes in .vim/colors/
" colorscheme neon 
colorscheme dusk

" Not sure why I need to declare this here as well as in .vimrc but whatevs
filetype plugin on
