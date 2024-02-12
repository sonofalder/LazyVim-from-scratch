return {
-- colorscheme
	"AlexvZyl/nordic.nvim",
	priority=1000,
	lazy = false,
	config = function()
		require "nordic" .load()
	end
}
