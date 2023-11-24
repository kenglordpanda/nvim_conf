local bufferline = require("bufferline")
local opts = {
	mode = "buffers",
	separator_style = "slope",
    diagnostics = "nvim_lsp",
	diagnostics_indicator = function(count, level, diagnostics_dict, context)
		local s = " "
		for e, n in pairs(diagnostics_dict) do
			local sym = e == "error" and " " or (e == "warning" and " " or "")
			s = s .. n .. sym
		end
		return s
	end,
}

bufferline.setup(_, opts)
