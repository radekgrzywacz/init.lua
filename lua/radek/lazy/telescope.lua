return {
	'nvim-telescope/telescope.nvim',
    tag = "0.1.6",

    dependencies = {  -- Corrected the typo here
		"nvim-lua/plenary.nvim" 
	},

	config = function()
        require('telescope').setup({

--[[     TelescopeMatching = { fg = ss.diagnostics.hint },
        TelescopeSelection = { fg = ss.diagnostics.hint, bg = ss.bg.cursorline },

        TelescopePromptTitle = { fg = ss.bg.floating, bg = ss.syntax.keyword, bold = true },
        TelescopePromptPrefix = { fg = ss.diagnostics.hint },
        TelescopePromptCounter = { fg = ss.diagnostics.hint },
        TelescopePromptNormal = { bg = ss.bg.cursorline },
        TelescopePromptBorder = { fg = ss.bg.cursorline, bg = ss.bg.cursorline },

        TelescopeResultsTitle = { fg = ss.bg.floating, bg = ss.bg.floating, bold = true },
        TelescopeResultsNormal = { bg = ss.bg.floating },
        TelescopeResultsBorder = { fg = ss.bg.floating, bg = ss.bg.floating },

        TelescopePreviewTitle = { fg = ss.bg.floating, bg = ss.syntax.string, bold = true },
        TelescopePreviewNormal = { bg = ss.bg.floating },
        TelescopePreviewBorder = { fg = ss.bg.floating, bg = ss.bg.floating },
        --]]
})
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
		vim.keymap.set('n', '<C-p>', builtin.git_files, {})
		vim.keymap.set('n', '<leader>ps', function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
		vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
	end
}
