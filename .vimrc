"" Plug plugin manager setup
let vimplug_exists=expand('~/.vim/autoload/plug.vim')
let g:vim_bootstrap_editor = "vim"
if !filereadable(vimplug_exists)
  silent !\curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"
  autocmd VimEnter * PlugInstall
endif

" Plugin support (via vim-plug)
call plug#begin(expand('~/.vim/plugins'))
Plug 'joshdick/onedark.vim'                      " color scheme
Plug 'sheerun/vim-polyglot'                      " multi-language pack
Plug 'itchyny/lightline.vim'                     " nice status line
call plug#end()

let g:onedark_hid_endofbuffer = 1
set termguicolors
syntax on
colorscheme onedark

"" Lightline Setup
let g:lightline = { 'colorscheme': 'onedark' }
set laststatus=2

