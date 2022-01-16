set number relativenumber

call plug#begin('C:\Users\WALTON\AppData\Local\nvim\autoload')
	Plug 'noahfrederick/vim-skeleton'
	Plug 'neoclide/coc.nvim', {'branch':'release'}
	Plug 'joshdick/onedark.vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'jiangmiao/auto-pairs'
	Plug '/scrooloose/NERDTree'
	Plug 'github/copilot.vim'

call plug#end()

let g:skeleton_template_dir = "~/AppData/Local/nvim/skeleton_templates"

source ~/AppData/Local/nvim/coc_config/coc.vim.txt
source ~/AppData/Local/nvim/theme/theme.vim.txt
source ~/AppData/Local/nvim/my_shortcuts.vim
