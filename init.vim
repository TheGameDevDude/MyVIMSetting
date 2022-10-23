:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

if exists('+termguicolors')
	let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

call plug#begin()
	Plug 'https://github.com/rafi/awesome-vim-colorschemes'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

lua << EOF
	require'nvim-treesitter.configs'.setup {
	  highlight = {
		enable = true,
		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages[[language]]
		additional_vim_regex_highlighting = true,
	  },
	}

	require('packer').startup(function()
		use 'wbthomason/packer.nvim'
		use 'Mofiqul/vscode.nvim'
		use 'xiyaowong/nvim-transparent'
		vim.g.vscode_style = "dark"
	end)
EOF

colorscheme vscode
