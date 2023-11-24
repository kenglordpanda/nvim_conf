local bufferline = require("bufferline")
local opts = {
	mode = "buffers",
	style_preset = bufferline.style_preset.minimal,
	themable = true,
	numbers = "ordinal",
	close_command = "bdelete! %d", -- can be a string | function, | false see "Mouse actions"
	right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
	left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
	middle_mouse_command = nil, -- can be a string | function, | false see "Mouse actions"
	indicator = {
		style = "underline",
	},
	buffer_close_icon = "󰅖",
	modified_icon = "●",
	close_icon = "",
	left_trunc_marker = "",
	right_trunc_marker = "",
	max_name_length = 18,
	max_prefix_length = 15,
	truncate_names = true,
	diagnostics = "nvim_lsp",
	diagnostics_update_in_insert = true,

	diagnostics_indicator = function(_, _, diag)
		local icons = require("helpers.icons").diagnostics
		local indicator = (diag.error and icons.Error .. " " or "") .. (diag.warning and icons.Warn or "")
		return vim.trim(indicator)
	end,
	color_icons = true,
	get_element_icon = function(element)
		local icon, hl = require("nvim-web-devicons").get_icon_by_filetype(element.filetype, { default = false })
		return icon, hl
	end,
	show_buffer_icons = true,
	show_buffer_close_icons = true,
	show_close_icon = true,
	show_tab_indicators = true,
	show_duplicate_prefix = false,
	persist_buffer_sort = true,
	move_wraps_at_ends = true,
	separator_style = "slope",
	enforce_regular_tabs = true,
	always_show_bufferline = true,
	hover = {
		enabled = true,
		delay = 200,
		reveal = { "close" },
	},
	sort_by = "insert_after_current",
}

bufferline.setup(_, opts)
