call plug#begin('~/.vim/plugged')
  Plug 'tmux-plugins/vim-tmux-focus-events'
  Plug 'mattn/emmet-vim'
  " 自動補完
  Plug 'Shougo/ddc.vim'
  " Plug 'vim-denops/denops.vim'
  Plug 'Shougo/pum.vim'
  " ファイルをtree表示してくれる
  Plug 'scrooloose/nerdtree'
  " Fuzzy
  Plug 'tani/ddc-fuzzy'

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
  " Plug 'cocopon/iceberg.vim'

  " lsp
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'dart-lang/dart-vim-plugin'
	" ale
	" Plug 'w0rp/ale'
	" Plug 'airblade/vim-gitgutter'

  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  " cohama lexima
  " 'cohama/lexima.vim'
  " 'tomtom/tcomment_vim'
  " 'tpope/vim-surround'

	" バッファ管理
	Plug 'jeetsukumaran/vim-buffergator'

	" マークダウンプレビュー
	Plug 'iamcco/mathjax-support-for-mkdp'
	Plug 'iamcco/markdown-preview.vim'
call plug#end()

