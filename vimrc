"run vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" This is the Vundle package, which can be found on GitHub.
" " For GitHub repos, you specify plugins using the
" " 'user/repository' format
" :PluginInstall to install
Plugin 'gmarik/vundle'
Plugin 'lukaszb/vim-web-indent'

"this is my VIMRC file
syntax on
set shiftwidth=2 softtabstop=2 expandtab

"set leader
let mapleader = ","


"I don't like auto indent
"set noautoindent
"filetype indent on
filetype plugin indent on
au BufEnter,BufNew *.php :set filetype=html
au BufEnter,BufNew *.php :set syntax=php

command! Wq :wq
command! W :w
"ab wq <ESC>dw:wq<CR>
"ab Wq <ESC>dw:wq<CR>
set path+=**
set wildmenu

""set theme to darkbackground
set background=dark

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

"sets dictionary files for iab
set dictionary=~/.vim/skeleton/dic.lst

"insert bootstrap templates
nnoremap <leader>html :-1read $HOME/.vim/skeleton/bootstrap/index.html<CR>3j9li
nnoremap <leader>getlist :-1read $HOME/.vim/skeleton/getlist.js<CR>i

"c programming templates
iab gcchello <ESC>:-1read $HOME/.vim/skeleton/gcc/chello.c<CR>jjjjf/i
iab gccdir <ESC>:-1read $HOME/.vim/skeleton/gcc/gccdir.c<CR><F6>
iab gcccolor <ESC>:-1read $HOME/.vim/skeleton/gcc/gcccolor.c<CR><F6>
iab gccyn <ESC>:-1read $HOME/.vim/skeleton/gcc/gccyn.c<CR><F6>
iab gccinput <ESC>:-1read $HOME/.vim/skeleton/gcc/gccinput.c<CR><F6>
iab gccenterToContinue <ESC>:-1read $HOME/.vim/skeleton/gcc/gccentercontinue.c<CR><F6>

"phaser templates
iab phabackgroundcolor <ESC>:-1read $HOME/.vim/skeleton/phaser/backgroundcolor.js<CR><F6>
iab phagravity <ESC>:-1read $HOME/.vim/skeleton/phaser/gravity.js<CR><F6>
iab phafollowmouse <ESC>:-1read $HOME/.vim/skeleton/phaser/followMouse.js<CR><F6>
iab phamousedown <ESC>:-1read $HOME/.vim/skeleton/phaser/onmousedown.js<CR><F6>
iab phakeys <ESC>:-1read $HOME/.vim/skeleton/phaser/keys.js<CR><F6>
iab phaphysics <ESC>:-1read $HOME/.vim/skeleton/phaser/physics.js<CR>f-c
iab phasprite <ESC>:-1read $HOME/.vim/skeleton/phaser/sprite.js<CR><F6>
iab phapaint1 <ESC>:-1read $HOME/.vim/skeleton/phaser/paint1.js<CR><F6>
iab phaloadimage <ESC>^dwigame.load.image("", "res/img/"");<ESC>5F"p<DEL><ESC>2f"c
iab phafade <ESC>igame.add.tween().to( { alpha: [.1,1] }, 2000, "Linear", true);<ESC>2F(a
iab phaclick <ESC>:-1read $HOME/.vim/skeleton/phaser/clickable.js<CR><F6>
iab phacollide <ESC>:-1read $HOME/.vim/skeleton/phaser/collide.js<CR><F6>
iab phacameraFollow <ESC>:-1read $HOME/.vim/skeleton/phaser/cameraFollow.js<CR><F6>
iab phaloadMap <ESC>:-1read $HOME/.vim/skeleton/phaser/loadMap.js<CR><F6>
"iab phaclick <ESC>^dwpi.anchor.set(0.5);<CR><ESC>pi.inputEnabled = true;<CR><ESC>pi.events.onInputDown.add(, this);<ESC>F,i

"""ThreeJS templates
iab 3jscube <ESC>:-1read $HOME/.vim/skeleton/threejs/cube.js<CR>
iab 3jsclick <ESC>:-1read $HOME/.vim/skeleton/threejs/clicked.js<CR>
iab 3jscameraRotate <ESC>:-1read $HOME/.vim/skeleton/threejs/cameraRotate.js<CR>
iab 3jscylinder <ESC>:-1read $HOME/.vim/skeleton/threejs/cylinder.js<CR>
iab 3jselected <ESC>:-1read $HOME/.vim/skeleton/threejs/allSelected.js<CR>
iab 3jdae <ESC>:-1read $HOME/.vim/skeleton/threejs/loadDAE.js<CR>

"Shell script templates
iab shsudo <ESC>:-1read $HOME/.vim/skeleton/asroot.sh<CR>
iab shcgi <ESC>:-1read $HOME/.vim/skeleton/cgi.sh<CR>
iab shcolor <ESC>:-1read $HOME/.vim/skeleton/shcolor.sh<CR>

"Python Scritp Templates
iab pyhead <ESC>:-1read $HOME/.vim/skeleton/python/head.py<CR>
iab pydownloadText <ESC>:-1read $HOME/.vim/skeleton/python/downloadText.py<CR>
iab pydownloadFile <ESC>:-1read $HOME/.vim/skeleton/python/downloadFile.py<CR>

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
"nnoremap <F6> mq:set filetype=html<CR>gg=G'q
nnoremap <F6> mqgg=G'qzz

"toggle set paste when F3 is clicked
set pastetoggle=<F3>

"uses system clipboard when yanking (center click)
"set clipboard=unnamed

"php templates
iab phpinclude <?php include(" ");?><ESC>F c

"bootstrap templates
iab btb <ESC>:-1read $HOME/.vim/skeleton/bootstrap/button.html<CR>f>
iab btbb <ESC>:-1read $HOME/.vim/skeleton/bootstrap/buttongroup.html<CR>jf>
iab btbcon <div class="container"> </div><ESC>F c
iab btnav <ESC>:-1read $HOME/.vim/skeleton/bootstrap/navbar.html<CR>/WebSite<CR>cit
iab btcard <ESC>:-1read $HOME/.vim/skeleton/bootstrap/cards.html<CR>/WebSite<CR>cit
iab btnav_sticky <ESC>:-1read $HOME/.vim/skeleton/bootstrap/navbar_sticky.html<CR>/WebSite<CR>cit
iab btprogessbar <ESC>:-1read $HOME/.vim/skeleton/bootstrap/progressbar.html<CR>
iab btcollapse <ESC>:-1read $HOME/.vim/skeleton/bootstrap/collapsible.html<CR>
iab btinput <ESC>:-1read $HOME/.vim/skeleton/bootstrap/input.html<CR>
iab btpassword <ESC>:-1read $HOME/.vim/skeleton/bootstrap/password.html<CR>
iab btmedia <ESC>:-1read $HOME/.vim/skeleton/bootstrap/meida1.html<CR>
iab btfooter_sticky <ESC>:-1read $HOME/.vim/skeleton/bootstrap/footerSticky.html<CR>
iab btcarousel <ESC>:-1read $HOME/.vim/skeleton/bootstrap/carousel.html<CR>
iab btmedianested <ESC>:-1read $HOME/.vim/skeleton/bootstrap/meidanested.html<CR>
iab btmodal <ESC>:-1read $HOME/.vim/skeleton/bootstrap/modal.html<CR>
iab bttable <ESC>:-1read $HOME/.vim/skeleton/bootstrap/table.html<CR>
iab btimgcorner <ESC>:-1read $HOME/.vim/skeleton/bootstrap/imgcorner.html<CR>
iab btimgcircle <ESC>:-1read $HOME/.vim/skeleton/bootstrap/imgcircle.html<CR>
iab btthumbnail <ESC>:-1read $HOME/.vim/skeleton/bootstrap/thumbnail.html<CR>
iab btwell <ESC>:-1read $HOME/.vim/skeleton/bootstrap/well.html<CR>
iab btalert_success <ESC>:-1read $HOME/.vim/skeleton/bootstrap/alertsuccess.html<CR>
iab btalert_info <ESC>:-1read $HOME/.vim/skeleton/bootstrap/alertinfo.html<CR>
iab btalert_warning <ESC>:-1read $HOME/.vim/skeleton/bootstrap/alertwarning.html<CR>
iab btalert_danger <ESC>:-1read $HOME/.vim/skeleton/bootstrap/alertdanger.html<CR>
iab btlist <ESC>:-1read $HOME/.vim/skeleton/bootstrap/list.html<CR>

"jquery templates
"iab jqpost function(){<CR>var url = 'submit.php';<CR>$.post( url, {data:'test'}, function( data ) {<CR>console.log( data );<CR>});<CR>}
iab jqpost <ESC>:-1read $HOME/.vim/skeleton/jq/post.js<CR>
iab jqcl $(" ").click();<ESC>F c
iab jqlist <div class="container"><CR><h2>List Group With Linked Items</h2><CR><div class="list-group"><CR><a class="list-group-item">F</a><CR><a class="list-group-item">Second item</a><CR><a class="list-group-item">Third item</a><CR></div><CR></div><ESC>kkkkfFc
iab jqmodaltoggle $("#modal").modal('toggle');

"Javascript templates
iab jsfun function  (){<CR><CR>}<ESC>2k2f c
iab jssrc <script src=" "><script><ESC>F c
iab jskeydown <ESC>:-1read $HOME/.vim/skeleton/js/onkeydown.js<CR>
iab jskeyup <ESC>:-1read $HOME/.vim/skeleton/js/onkeyup.js<CR>

iab Wq <ESC>i<DEL><ESC>:wq<CR>
iab wq <ESC>i<DEL><ESC>:wq<CR>


"force to use hjkl
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
