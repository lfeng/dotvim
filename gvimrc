" -----------------------------------------------------------------------------
" |                            VIM Settings                                   |
" |                              GUI stuff                                    |
" -----------------------------------------------------------------------------


" OS Specific *****************************************************************
if has("gui_macvim")

  set fuoptions=maxvert,maxhorz " fullscreen options (MacVim only), resized window when changed to fullscreen
  set guifont=Monaco\ for\ Powerline:h13
  set guioptions-=T  " remove toolbar
  set guioptions-=L  " remove left scrollbar
  set guioptions-=r  " remove right scrollbar

elseif has("gui_gtk2")

  set guifont=Monaco
  set guioptions-=T  " remove toolbar

elseif has("x11")
elseif has("gui_win32")
end
set guifont=Monaco:h13

" General *********************************************************************
set anti " Antialias font

set transparency=20

" Default size of window
set columns=175
set lines=55

" Tab headings
set gtl=%t gtt=%F

" let g:acp_behaviorPythonOmniLength = -1

