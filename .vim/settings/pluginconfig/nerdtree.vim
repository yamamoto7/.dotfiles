" NERDTree config
nnoremap sfu :NERDTreeToggle<CR>

" comment out config
let g:NERDDefaultAlign='left'

" UIを簡略化
let g:NERDTreeMinimalUI = 1
" 横幅設定
let g:NERDTreeWinSize = 25
let g:NERDTreeCascadeOpenSingleChildDir = 1
let g:NERDTreeCascadeSingleChildDir = 0
" 隠しファイルをデフォルトで表示
let g:NERDTreeShowHidden = 1
let g:NERDTreeRespectWildIgnore = 0
let g:NERDTreeAutoDeleteBuffer = 0
" 自動で折りたたむ設定(def: 0)
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeBookmarksFile = $VARPATH.'/treemarks'
let NERDTreeIgnore = [
	\ '\.git$', '\.hg$', '\.svn$', '\.stversions$', '\.pyc$', '\.svn$',
	\ '\.DS_Store$', '\.sass-cache$', '__pycache__$', '\.egg-info$', '\.cache$'
	\ ]
