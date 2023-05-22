" NERDTree config
" nnoremap sfu :NERDTreeToggle<CR>

let g:fern#disable_default_mappings=1
" let g:fern#toggle_view_command = 'keepalt botright 60 split | wincmd p | keepalt buffer %d'
nnoremap sfu :Fern . -drawer -reveal=% -toggle<CR>
let g:fern#default_hidden=1
let g:fern#renderer = 'nerdfont'
let g:fern#renderer_options = {'number': 0}

function! s:init_fern() abort
    " nmap <buffer> v <Plug>(fern-action-open:side)
    " nmap <buffer> M <Plug>(fern-action-new-dir)
    " nmap <buffer> ! <Plug>(fern-action-hidden:toggle)
    " nmap <buffer> - <Plug>(fern-action-mark:toggle)
    " vmap <buffer> - <Plug>(fern-action-mark:toggle)
    " nmap <buffer> C <Plug>(fern-action-clipboard-copy)
    " nmap <buffer> X <Plug>(fern-action-clipboard-move)
    " nmap <buffer> P <Plug>(fern-action-clipboard-paste)
    " nmap <buffer> h <Plug>(fern-action-collapse)
    " nmap <buffer> c <Plug>(fern-action-copy)
    " nmap <buffer> <leader>h <Plug>(fern-action-leave)
    " nmap <buffer> m <Plug>(fern-action-move)
    " nmap <buffer> N <Plug>(fern-action-new-file)
    " nmap <buffer> <cr> <Plug>(fern-action-open-or-enter)
    " nmap <buffer> l <Plug>(fern-action-open-or-expand)
    " nmap <buffer> s <Plug>(fern-action-open:select)
    " nmap <buffer> t <Plug>(fern-action-open:tabedit)
    " nmap <buffer> <C-l> <Plug>(fern-action-reload)
    " nmap <buffer> r <Plug>(fern-action-rename)
    " nmap <buffer> i <Plug>(fern-action-reveal)
    " nmap <buffer> D <Plug>(fern-action-trash)
    " nmap <buffer> y <Plug>(fern-action-yank)
    " nmap <buffer> gr <Plug>(fern-action-grep)
    " nmap <buffer> d <Plug>(fern-action-remove)
    " nmap <buffer> B <Plug>(fern-action-save-as-bookmark)
    " nmap <buffer> cd <Plug>(fern-action-tcd)
    " nmap <buffer> <C-h> <C-w>h
    " nmap <buffer> <C-l> <C-w>l


  " nmap <buffer> i <Plug>(fern-action-open:split)<CR>
  " nmap <buffer> s <Plug>(fern-action-open:vsplit)<CR>
  " nmap <buffer><nowait> mc <Plug>(fern-action-copy)
  " nmap <buffer><nowait> mm <Plug>(fern-action-move)
  " nmap <buffer><nowait> md <Plug>(fern-action-delete)
  " nmap <buffer><nowait> ma <Plug>(fern-action-new-file)
  " nmap <buffer><nowait> <CR> <Plug>(fern-action-expand-or-collapse)
	" nmap <buffer> <silent> <CR> <Plug>(fern-action-open)
	" nmap <buffer><nowait> o <Plug>(fern-action-open-or-expand)
	" nmap <silent><buffer><expr> <CR> fern#smart_action('l', 'h')
	" nmap <buffer> <cr> <Plug>(fern-action-open-or-enter)
	" Define NERDTree like mappings
  nmap <buffer> o <Plug>(fern-action-open:edit)
  nmap <buffer> go <Plug>(fern-action-open:edit)<C-w>p
  nmap <buffer> t <Plug>(fern-action-open:tabedit)
  nmap <buffer> T <Plug>(fern-action-open:tabedit)gT
  nmap <buffer> i <Plug>(fern-action-open:split)
  nmap <buffer> gi <Plug>(fern-action-open:split)<C-w>p
  nmap <buffer> s <Plug>(fern-action-open:vsplit)<cr>
  nmap <buffer> gs <Plug>(fern-action-open:vsplit)<C-w>p
  nmap <buffer> ma <Plug>(fern-action-new-path)
  nmap <buffer> mm <Plug>(fern-action-rename)
  nmap <buffer> md <Plug>(fern-action-trash)
  nmap <buffer> mc <Plug>(fern-action-copy)
  nmap <buffer> P gg

  nmap <buffer> C <Plug>(fern-action-enter)
  nmap <buffer> u <Plug>(fern-action-leave)
  nmap <buffer> r <Plug>(fern-action-reload)
  nmap <buffer> R gg<Plug>(fern-action-reload)<C-o>
  nmap <buffer> cd <Plug>(fern-action-cd)
  nmap <buffer> CD gg<Plug>(fern-action-cd)<C-o>

  nmap <buffer> I <Plug>(fern-action-hidden-toggle)

  nmap <buffer> q <Plug>(fern-action-collapse)
	nmap <buffer><nowait> <cr> <Plug>(fern-action-open-or-expand)
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END
