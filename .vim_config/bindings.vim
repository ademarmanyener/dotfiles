vnoremap < <gv
vnoremap > >gv

" Disable move focus by left mouse click
nnoremap <LeftMouse> ma<LeftMouse>`a 

map qq :q!<Enter>
map qw :wq<Enter>
map qh :nohl<Enter>

map <PageUp> <NOP>
map <PageDown> <NOP>
map! <PageUp> <NOP>
map! <PageDown> <NOP>

" Hard-ass vim
for key in ['<Up>', '<Down>', '<Left>', '<Right>']
  exec 'noremap' key '<Nop>'
  exec 'inoremap' key '<Nop>'
  exec 'cnoremap' key '<Nop>'
endfor

" For accidental quick saves
command! -nargs=* W w

" Underscore to remove the search highlights
nnoremap <silent> _ :nohl<CR>

map <C-c> :NERDTreeTabsToggle<CR>
map <C-f> :FZF<CR>
map <C-t> :TagbarToggle<CR>

nmap <Leader>gn <Plug>(GitGutterNextHunk)
nmap <Leader>gp <Plug>(GitGutterPrevHunk)

nmap <Leader>ga <Plug>(GitGutterStageHunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)

nnoremap <Leader>gs :Magit<CR>

nnoremap <S-h> :tabprevious<CR>
nnoremap <S-l> :tabnext<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Left> :tabprevious<CR>
