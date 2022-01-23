" ノーマルモード＋ビジュアルモード        noremap	  map
" コマンドラインモード＋インサートモード	noremap!	map!
" ノーマルモード           	              nnoremap	nmap
" ビジュアル(選択)モード	                vnoremap	vmap
" コマンドラインモード	                  cnoremap	cmap
" インサート(挿入)モード	                inoremap	imap


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

" Disable `s`
noremap s <nop>

