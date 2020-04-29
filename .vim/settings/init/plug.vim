call plug#begin('~/.vim/plugged')
  Plug 'mattn/emmet-vim'
  " ファイルをtree表示してくれる
  Plug 'scrooloose/nerdtree'

  " マルチプルカーソル
  Plug 'terryma/vim-multiple-cursors'

  " シンタックスハイライト
  Plug 'posva/vim-vue'
  Plug 'digitaltoad/vim-pug'
  Plug 'leafgarland/typescript-vim'

  " スニペット
  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'

  " ペーストの時インデントずれるの対策
  Plug 'ConradIrwin/vim-bracketed-paste'

  " editorconfig を有効にする
  Plug 'editorconfig/editorconfig-vim'

  " コメントアウト奴
  Plug 'scrooloose/nerdcommenter'

  " カラーコード可視化
  Plug 'gorodinskiy/vim-coloresque'

  " editor色
  Plug 'cocopon/iceberg.vim'

  " cohama lexima
  " 'cohama/lexima.vim'
  " 'tomtom/tcomment_vim'
  " 'tpope/vim-surround'
call plug#end()

