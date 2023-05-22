call plug#begin('~/.local/share/nvim/plugged')
  " 自動補完
  Plug 'Shougo/pum.vim'

  " マルチプルカーソル
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

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

  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'

  " バッファ管理
  Plug 'jeetsukumaran/vim-buffergator'

  " coc
  Plug 'neoclide/coc.nvim'
  Plug 'dense-analysis/ale'
	Plug 'github/copilot.vim'

	Plug 'lambdalisue/fern.vim'
	Plug 'lambdalisue/nerdfont.vim'
	Plug 'lambdalisue/fern-renderer-nerdfont.vim'
	Plug 'lambdalisue/glyph-palette.vim'

	" fzf
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
call plug#end()

