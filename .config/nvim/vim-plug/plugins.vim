"/home/xilac/.config/nvim/vim-plug/plugins.vim auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    " Intellisense
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }

    " Theme
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'arcticicestudio/nord-vim'

    " Status line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'jeffkreeftmeijer/vim-numbertoggle'

    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    " Fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    Plug 'tpope/vim-commentary'
    
    " Start screen
    Plug 'mhinz/vim-startify'

    " Git
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " Sneak
    Plug 'justinmk/vim-sneak'

    " Quickscope
    Plug 'unblevable/quick-scope'

    " Which key
    Plug 'liuchengxu/vim-which-key'

    " Rainbow
    Plug 'junegunn/rainbow_parentheses.vim'

    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'

    " Indent-python
    Plug 'vim-scripts/indentpython.vim'

    " Floaterm
    Plug 'voldikss/vim-floaterm'

    " Codi
    Plug 'metakirby5/codi.vim'

    " Multicursor
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}

    Plug 'vimwiki/vimwiki'

    Plug 'vim-scripts/c.vim'
    Plug 'vim-scripts/SingleCompile'

    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'lervag/vimtex'

    Plug 'Yggdroot/indentLine'
    Plug 'jdhao/better-escape.vim'
    Plug 'honza/vim-snippets'

call plug#end()

colorscheme dracula

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
