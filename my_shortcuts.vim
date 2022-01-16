"My binds
let mapleader = " "

 "NERDTree settings"
"==================="
"Toggle shortcut
nnoremap <A-f> :NERDTreeToggle<CR>
"Open NERDTree on startup
autocmd VimEnter * NERDTree
"Quit NERDTree automatically
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Shortcutting split navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Line numbers switch between hybrid and normal numbers
nnoremap <F5> :call LineNumber()<cr>
function! LineNumber()
  if(&relativenumber == 1)
    :set norelativenumber
  else
    :set relativenumber  
  endif
endfunction

" Deleting words and replacing words. 
nnoremap df ciw

" Enter normal mode with jk
inoremap jk <esc>

" For centralizing the screen while scrolling.
nnoremap G Gzz
set scrolloff=999

"Run without compiler message
autocmd FileType c nnoremap <leader>r :w<cr> :vsp <cr> <C-w>l :!gcc % -o %<<cr>:vert term %<<cr>a
"Run in terminal with compiler message in quickfix
autocmd FileType c nnoremap <leader>e :w<cr> :vsp <cr> <C-w>l :!gcc % -o %<<cr>:vert term %<<cr>
"Compile in the split screen terminal
autocmd FileType c nnoremap <leader>1 :w<cr> :vsp <cr> <C-w>l :vert term gcc % -o %<<cr>
"Compile and run in full screen terminal
autocmd FileType c nnoremap <leader>2 :w<cr> :!gcc % -o %<<cr> :vert term %<<cr>a
"Just Compile in quickfix
autocmd FileType c nnoremap <leader>3 :w<cr> :!gcc % -o %<<cr>
"Compile and run in quickfix.
autocmd FileType c nnoremap <leader>4 :w<cr> :!gcc % -o %<<cr>:!%<<cr>


"Trying out a printing shrotcut for c.
autocmd FileType c inoremap pprint printf("");<LEFT><LEFT><LEFT>
