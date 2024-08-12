"
" ノーマルモード＋ビジュアルモード        noremap	  map
" コマンドラインモード＋インサートモード	noremap!	map!
" ノーマルモード           	              nnoremap	nmap
" ビジュアル(選択)モード	                vnoremap	vmap
" コマンドラインモード	                  cnoremap	cmap
" インサート(挿入)モード	                inoremap	imap
" :map   :noremap  :unmap     ノーマル、ビジュアル、選択、演算待ち状態
" :nmap  :nnoremap :nunmap    ノーマル
" :vmap  :vnoremap :vunmap    ビジュアル、選択
" :smap  :snoremap :sunmap    選択
" :xmap  :xnoremap :xunmap    ビジュアル
" :omap  :onoremap :ounmap    演算待ち状態
" :map!  :noremap! :unmap!    挿入、コマンドライン
" :imap  :inoremap :iunmap    挿入
" :lmap  :lnoremap :lunmap    挿入、コマンドライン、Lang-Arg
" :cmap  :cnoremap :cunmap    コマンドライン

let mapleader = "\<Space>"

" Disables
noremap s <nop>
" noremap <C-h> <nop>
" noremap <C-j> <nop>
" noremap <C-k> <nop>
" noremap <C-l> <nop>

" 画面移動config
nnoremap sfh <C-w>h
nnoremap sfl <C-w>l
nnoremap sfj <C-w>j
nnoremap sfk <C-w>k
nnoremap sfc <C-w>c

" nnoremap <C-;> <C-w>+
" nnoremap <C--> <C-w>-

" fdでノーマルに戻る
inoremap <silent> fd <ESC>

" 列操作
noremap <SPACE>h ^
noremap <SPACE>l $

" カーソル折返し設定
nnoremap j gj
nnoremap k gk
noremap h <BACKSPACE>
noremap l <SPACE>

" ヤンクせずにdelete
noremap <SPACE>d "_d

" Disable `ctrl + z`
noremap <C-z> <nop>

