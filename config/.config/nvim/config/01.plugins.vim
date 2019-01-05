"Vim file to manage all plugins
call plug#begin('~/.config/nvim/plugged')

"Fuzzy Finder https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf.vim'

"Multiple Cursors https://github.com/terryma/vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'

"Shell Commands https://github.com/tpope/vim-eunuch
Plug 'tpope/vim-eunuch'

"Surround-highlights brackets  https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

"NERDTree-filetree https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree'

"Emmet-Useful for HTML, CSS... https://github.com/mattn/emmet-vim
Plug 'mattn/emmet-vim'

"ALE-Linter to check syntax https://github.com/w0rp/ale
Plug 'w0rp/ale'

"Gitgutter-Shows changes made to a file from the git version https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

"Tabular-Nicer Tables https://github.com/godlygeek/tabular
Plug 'godlygeek/tabular'

"Fugitive-Git Wrapper https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

call plug#end()
