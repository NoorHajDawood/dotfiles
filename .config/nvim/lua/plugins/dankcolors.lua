return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#12131a',
				base01 = '#12131a',
				base02 = '#818a80',
				base03 = '#818a80',
				base04 = '#d3dfd2',
				base05 = '#f9fff8',
				base06 = '#f9fff8',
				base07 = '#f9fff8',
				base08 = '#ffb59f',
				base09 = '#ffb59f',
				base0A = '#b4eaae',
				base0B = '#a8ffa5',
				base0C = '#dfffdc',
				base0D = '#b4eaae',
				base0E = '#ceffc9',
				base0F = '#ceffc9',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#818a80',
				fg = '#f9fff8',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#b4eaae',
				fg = '#12131a',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#818a80' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#dfffdc', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#ceffc9',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#b4eaae',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#b4eaae',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#dfffdc',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#a8ffa5',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#d3dfd2' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#d3dfd2' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#818a80',
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
