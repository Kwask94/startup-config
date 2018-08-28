"============================================================================"
"============================= General Mappings ============================="
"============================================================================"

let mapleader = ","
imap ,, <Esc> " Exit
nmap <Esc>s <c-w>s " split new viewpoint
nmap ; : 
map <Leader>sa ggVG " Select All
nmap U <C-r> " Redo last changes
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap <silent> <Leader>fvs :source $MYVIMRC<CR>:echo $MYVIMRC . ' sourced'<CR>

"============================================================================"
"============================= Windows and Tabs Mappings ===================="
"============================================================================"
" Shift Windows Or tabs focus ==============================================="

" Windows --------------------------------------------------------------------
" <c-w>hjkl     " movement
" <c-w>t        " movement top-left
" <c-w>b        " movement bottom-right
" <c-w>p        " movement last-active
" <c-w>w        " movmeemt random 
" <c-w>T        " move current to new tab

" Tabs -----------------------------------------------------------------------

" Shift Windows OR tab positions ============================================"

" Windows --------------------------------------------------------------------
" <c-w>r        " ALL rotate downwards/rightwards
" <c-w>R        " ALL rotate upwards/leftwards
" <c-w>v        " split veritually new window 
" <c-w>HJKL     " Far left,right,down,up

" Tabs -----------------------------------------------------------------------

" Close Windows OR tabs ====================================================="

" Windows --------------------------------------------------------------------
nmap <leader>w :w<CR> " Write current file 
nmap <leader>q :q<CR>   " close
nmap <leader>q1 :q!<CR> " close without saving
nmap <leader>wq :wq<CR> " close withsaving 
nmap <leader>wqa :wqa<CR> "close and save everything

" Tabs -----------------------------------------------------------------------

" Open New Window OR tab ===================================================="

" Windows --------------------------------------------------------------------
nmap <Leader>ww <Plug>VimwikiIndex " Open "VimWiki"
nmap <Leader>wn <Plug>VimwikiSplitLink " Open "link" in new window (h) <S-CR>
nmap <leader>wv <Plug>VimwikiVSplitLink " Open "link" in new window (v) <C-CR>
nmap <Leader>wt <Plug>VimwikiTabnewLink " Open "links" in new tab
nmap <Leader>wr <Plug>VimwikiRenameLink " Rename "Wiki Window"
nmap <leader>ft :vnew ~/main/todos/index.md<cr> " Quick VOpen my todo index 
nmap <leader>e :e **/ " just type beginning of a name and hit TAB @juanpedrojose

" Tabs -----------------------------------------------------------------------
nmap <leader>fv :tabnew ~/.config/nvim/<cr> " Open "Nvim Configs"
nmap <leader>fz :tabnew ~/.zshrc<cr> " Open "zsh Configs" 
" :sf           " open current direcrtory 
" <c-w>n        " Open new horzantal window 
" <c-w>v        " Open new virtcual windw
" <c-w>q        " kill window
" <c-w>o        " Kill all window put current active 

" Window resizing ============================================================
" <c-w>= CTRL-W_= " make All Window equile 
" <c-w>-N       " Decrease hight by :res N
" <c-w>+N       " Increase Hight by :res+N
" <c-w><        " Decrease width by 1 

" Other ======================================================================
nmap <leader>of :NERDTreeFind<CR> "show current file in the tree
nmap <leader>o :NERDTreeToggle<CR> Open NERD Tree

"============================================================================"
"============================= Folding ======================================"
"============================================================================"
nmap z0 :set foldlevel=0<cr>
nmap z1 :set foldlevel=1<cr>
nmap z2 :set foldlevel=2<cr>
nmap z3 :set foldlevel=3<cr>
nmap z4 :set foldlevel=4<cr>
nmap z5 :set foldlevel=5<cr>

nmap <Leader>zi :set foldmethod=indent<CR>
nmap <Leader>zs :set foldmethod=syntax<CR>
nmap <Leader>zk :set foldmethod=marker<CR>
nmap <Leader>zm :set foldmethod=manual<CR>

"============================================================================"
"============================= Text Insertion ==============================="
"============================================================================"
nnoremap <leader>' r"
nnoremap <leader>,' r 
vnoremap <leader>' r"
vnoremap <leader>,' r 
nnoremap <leader>3 r#
nnoremap <leader>3' r 
vnoremap <leader>3 r#
vnoremap <leader>3' r 
nnoremap <leader>8 r* 
nnoremap <leader>8' r 
vnoremap <leader>8 r* 
vnoremap <leader>8' r

"============================================================================"
"============================= Terminal ====================================="
"============================================================================"
command! -complete=file -nargs=+ Vterm vnew | setlocal winfixwidth winfixheight | terminal <args>
command! -complete=file -nargs=+ Sterm new | setlocal winfixwidth winfixheight | terminal <args>

" Terminal Open 
nmap <Leader>tv :vnew <BAR>setlocal winfixwidth winfixheight <BAR> terminal<CR> "in Vwindow
nmap <Leader>ts :new <BAR>setlocal winfixwidth winfixheight <BAR> terminal<CR> "in Hwindow 
nmap <Leader>tt :tabnew <BAR>setlocal winfixwidth winfixheight <BAR> terminal<CR> "in new tab
