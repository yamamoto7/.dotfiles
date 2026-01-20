call plug#begin('~/.local/share/nvim/plugged')

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

  Plug 'williamboman/mason.nvim'
  Plug 'https://github.com/neovim/nvim-lspconfig'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'nvimdev/lspsaga.nvim', { 'branch': 'main' }

  " CMP
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/nvim-cmp'
  
  " バッファ管理
  Plug 'jeetsukumaran/vim-buffergator'

  " カラーテーマ
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

  " GitHub Copilot
  " Plug 'github/copilot.vim'
  Plug 'zbirenbaum/copilot.lua'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'CopilotC-Nvim/CopilotChat.nvim'
  " Plug 'zbirenbaum/copilot-cmp'

  Plug 'lambdalisue/fern.vim'
  Plug 'lambdalisue/nerdfont.vim'
  Plug 'lambdalisue/fern-renderer-nerdfont.vim'
  Plug 'lambdalisue/glyph-palette.vim'

  Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
  Plug 'nvim-tree/nvim-web-devicons'

	" Browser
	Plug 'tyru/open-browser.vim'

	" Markdown
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
call plug#end()

