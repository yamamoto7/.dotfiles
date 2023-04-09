" 言語ごとにServerが実行されたらする設定を関数化
" setlocal omnifunc=lsp#complete   " オムニ補完を有効化
" let g:lsp_log_verbose = 0
" let g:lsp_diagnostics_enabled = 1
" let g:lsp_diagnostics_echo_cursor = 1
" let g:asyncomplete_popup_delay = 20
" let g:lsp_text_edit_enabled = 1
" let g:lsp_preview_float = 1
" let g:lsp_diagnostics_float_cursor = 1

" " 目印行を常に表示する
" if exists('&signcolumn')  " Vim 7.4.2201
  " set signcolumn=yes
" else
  " let g:gitgutter_sign_column_always = 1
" endif
" let g:dart_format_on_save = 1


" " inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" " inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" " inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" GitGutterの設定
" set updatetime=250
" nmap sfm <Plug>(GitGutterNextHunk)
" nmap sfn <Plug>(GitGutterPrevHunk)

" nmap sdd :LspDefinition<cr>
" nmap sdt :tab split<cr>:LspDefinition<cr>
" nmap sds :sp<cr>:LspDefinition<cr>
" nmap sdi :vsp<cr>:LspDefinition<cr>

nmap <buffer> sdd <Plug>(coc-definition)

