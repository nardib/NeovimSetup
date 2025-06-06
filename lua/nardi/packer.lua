-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use ({ "catppuccin/nvim", as = "catppuccin", 
	config = function()
		vim.cmd('colorscheme catppuccin-mocha')
	end})

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use {'nvim-treesitter/playground'}

	use {'ThePrimeagen/harpoon'}

	use {'mbbill/undotree'}

	use {'tpope/vim-fugitive'}

	-- lsp repos
	use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
	use({'neovim/nvim-lspconfig'})
	use({'hrsh7th/nvim-cmp'})
	use({'hrsh7th/cmp-nvim-lsp'})

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    use {"github/copilot.vim"}

    use {"christoomey/vim-tmux-navigator"}

    use {
        "lervag/vimtex",
        config = function ()
            vim.g.vimtex_view_method = 'zathura'
            vim.g.vimtex_compiler_latexmk = {
                options = {
                    '-shell-escape',
                    '-synctex=1',
                    '-interaction=nonstopmode',
            },
        }
        end}

  end)
