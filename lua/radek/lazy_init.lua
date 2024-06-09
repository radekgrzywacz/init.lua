local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("radek.lazy")
--[[ 
require("lazy").setup({
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'folke/tokyonight.nvim',
    {
        'rose-pine/neovim',
		name = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine-moon')
		end
	},
	
		'nvim-treesitter/nvim-treesitter',
		build = ":TSUpdate",
	},

  use('nvim-treesitter/playground')
  use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
  use {
	  "ThePrimeagen/harpoon",
	  branch = "harpoon2",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }
}, {}) 
]]--
