return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#14140a',
				base01 = '#14140a',
				base02 = '#a1959e',
				base03 = '#a1959e',
				base04 = '#ffeffb',
				base05 = '#fff8fd',
				base06 = '#fff8fd',
				base07 = '#fff8fd',
				base08 = '#ff9fa8',
				base09 = '#ff9fa8',
				base0A = '#ffc0f1',
				base0B = '#c0ffa5',
				base0C = '#ffddf7',
				base0D = '#ffc0f1',
				base0E = '#ffcbf3',
				base0F = '#ffcbf3',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#a1959e',
				fg = '#fff8fd',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#ffc0f1',
				fg = '#14140a',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#a1959e' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ffddf7', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#ffcbf3',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#ffc0f1',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#ffc0f1',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#ffddf7',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#c0ffa5',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#ffeffb' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#ffeffb' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#a1959e',
				italic = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
