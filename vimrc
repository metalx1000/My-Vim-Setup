"run vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" This is the Vundle package, which can be found on GitHub.
" " For GitHub repos, you specify plugins using the
" " 'user/repository' format
Plugin 'gmarik/vundle'
" To get plugins from Vim Scripts, you can reference the plugin
" " by name as it appears on the site
Plugin 'web-indent'

"this is my VIMRC file
syntax on
set shiftwidth=2 softtabstop=2 expandtab

"I don't like auto indent
"set noautoindent
"filetype indent on
filetype plugin indent on

command! Wq :wq
command! W :w

set path+=**
set wildmenu

""""""Prevent indent on paste
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif
 
  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"
 
  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction
 
let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")
 
function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
 
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
""""""END paste prevent indent

nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"insert templates
nnoremap ,html :-1read $HOME/.vim/skeleton/bootlist.html<CR>3j9li
nnoremap ,nav :-1read $HOME/.vim/skeleton/navbar<CR>/WebSite<CR>cit
nnoremap ,modal :-1read $HOME/.vim/skeleton/modal<CR>

nnoremap ,getlist :-1read $HOME/.vim/skeleton/getlist.js<CR>i



"CSS autocomplete Ctrl + x followed by  Ctrl + o
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"JavaScript Autocomplete Ctrl + x followed by  Ctrl + o
autocmd FileType js set omnifunc=javascriptcomplete#CompleteJS

"html Autocomplete Ctrl + x followed by  Ctrl + o
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"auto close tags on space
"inoremap </ </<C-X><C-O>

"line numbering
set relativenumber 
set number

"remove all trailing whitespace by pressing F5
nnoremap <F5> mp:let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>'pzz

"uses system clipboard when yanking (center click)
set clipboard=unnamed


ab bbb <button type="button" class="btn btn-primary btn-block"> </button><ESC>F c
ab bbbb <div class="btn-group btn-group-justified"><CR>  <a class="btn btn-primary"> </a><CR></div><ESC>k3f c
ab dcon <div class="container"> </div><ESC>F c

ab postf function(){<CR>var url = 'submit.php';<CR>$.post( url, {data:'test'}, function( data ) {<CR>console.log( data );<CR>});<CR>}<ESC><CR>6kf(i
ab ccc $(" ").click();<ESC>F c

ab fff function  (){<CR><CR>}<ESC>2k2f c
ab sss <script src=" "><script><ESC>F c
ab iii <?php include(" ");?><ESC>F c

ab listg <div class="container"><CR><h2>List Group With Linked Items</h2><CR><div class="list-group"><CR><a class="list-group-item">F</a><CR><a class="list-group-item">Second item</a><CR><a class="list-group-item">Third item</a><CR></div><CR></div><ESC>kkkkfFc
