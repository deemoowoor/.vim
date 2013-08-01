" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
" Highlights extrawhitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd BufWinEnter * match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd BufWinLeave * call clearmatches()
nnoremap <Leader>wn :match ExtraWhitespace /\s\+$/<CR>
nnoremap <Leader>wf :match<CR>
