" 画面移動config
nnoremap sfh <C-w>h
nnoremap sfl <C-w>l
nnoremap sfj <C-w>j
nnoremap sfk <C-w>k
nnoremap sfc <C-w>c

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

" ctrl + z 無効化
noremap <C-z> <nop>

" s 無効化
noremap s <nop>

map sfn :tabnext<CR>
map sfp :tabprevious<CR>
runtime! settings/init/*.vim
runtime! settings/pluginconfig/*.vim

" vue syntax highlight
" autocmd FileType vue syntax sync fromstart
" autocmd BufNewFile,BufRead *.jbuilder set filetype=ruby

function! ProfileCursorMove() abort
  let profile_file = expand('~/log/vim-profile.log')
  if filereadable(profile_file)
    call delete(profile_file)
  endif

  normal! gg
  normal! zR

  execute 'profile start ' . profile_file
  profile func *
  profile file *

  augroup ProfileCursorMove
    autocmd!
    autocmd CursorHold <buffer> profile pause | q
  augroup END

  for i in range(100)
    call feedkeys('j')
  endfor
endfunction
