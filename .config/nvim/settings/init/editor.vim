set autoread
set ambiwidth=double
" 操作系
set backspace=indent,eol,start " バックスペースを有効化
set mouse=a " マウス操作を有効化

" 情報表示系
set number " 行番号を表示する

" 色系
syntax enable " シンタックスハイライトの有効化
" set cursorline " カーソル行ハイライト
colorscheme tender " カラーテーマ


set scrolloff=5 " スクロールの余行設定


set expandtab " タブ入力を複数の空白入力に置き換える
set tabstop=2 " 画面上でタブ文字が占める幅
" set softtabstop=4 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時に前の行の構文をチェックし次の行のインデントを増減する
set shiftwidth=2 " smartindentで増減する幅

set clipboard+=unnamed " ヤンクしたものをクリップボードにコピー

" 検索系
set hlsearch "検索結果をハイライト
set incsearch
set ignorecase "検索パターンにおいて大文字と小文字を区別しない
set smartcase "検索パターンが大文字を含んでいたらignorecaseを上書きする

" ステータスライン
" Vimの改行コード表示がちと変わっているので、
" 一般的な改行コードに変換してステータスバーに表示するようにカスタマイズ
" 改行コード対応表
" CRLF: dos
" CR: unix
" LF: mac
:set list

let dic_line = { 'dos': 'CRLF', 'unix': 'CR', 'mac': 'LF'}
let f = &fileformat " 改行コード取得
let s = ''

if has_key(dic_line, f)
    let s = dic_line[f]
else
    let s = 'unkwown'
endif

set statusline=%f\ %n\ %m\ [%{f}]
set statusline+=%=
set statusline+=[%l/%L][%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]

" encording 設定
set encoding=utf-8
set fileencodings=utf-8,cp932

" Filetypes
autocmd BufNewFile,BufRead *.PRC  set filetype=sql
autocmd BufNewFile,BufRead *.UDF  set filetype=sql
autocmd BufRead,BufNewFile *.ts set filetype=typescript


:set nofixeol

" augroup vimrc-auto-cursorline
  " autocmd!
  " autocmd CursorMoved,CursorMovedI,WinLeave * setlocal nocursorline
  " autocmd CursorHold,CursorHoldI * setlocal cursorline
" augroup END
