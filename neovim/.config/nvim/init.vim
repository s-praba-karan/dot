if !exists('g:vscode')
  source  $HOME/.config/nvim/plug.vim
  source  $HOME/.config/nvim/lua/config.lua

endif

"VIM Settings
source  $HOME/.config/nvim/plug.vim
source  $HOME/.config/nvim/lua/config.lua


"Goyo Settings
function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

let g:limelight_conceal_guifg = '#777777'

function! s:goyo_leave()
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  hi! Normal ctermbg=NONE guibg=NONE 
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

nnoremap <C-g> :Goyo<CR>

"Colorscheme
colorscheme substrata

