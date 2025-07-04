local M = {}

---Create a new window for the given table
---@param my_table table
---@param options table
function M:create(my_table, options)
	options = options or {}

	self.table = my_table
	self.previous = vim.api.nvim_get_current_win()

	-- self.on_export = function()
	-- 	local new_table = export:export_table(markdown_table)
	--
	-- 	vim.schedule(function()
	-- 		local cursor = vim.api.nvim_win_get_cursor(0)
	--
	-- 		vim.api.nvim_buf_set_text(0, cursor[1] - 1, cursor[2], cursor[1] - 1, cursor[2], new_table)
	-- 	end)
	-- end

	return self
end

function M:show()
	print("WORKING")

	-- Don't open window again
	-- if it's already open
	if self.preview_window then
		return
	end

	self.preview_buffer = vim.api.nvim_create_buf(false, true)
	self.preview_window = vim.api.nvim_open_win(self.preview_buffer, false, {
		style = "minimal",
		border = "rounded",
		-- title = o.options.table.window.preview_title,
		title = "EasyTables",
		title_pos = "center",
		focusable = false,
		-- Required for function, will be overwritten by :_set_window_positions`
		relative = "editor",
		row = 0,
		col = 0,
		width = 1,
		height = 1,
	})

	-- vim.api.nvim_set_option_value("buftype", "nofile", { buf = self.preview_buffer })

	-- Disable default highlight
	-- vim.api.nvim_set_option_value("winhighlight", "Normal:Normal", { win = self.preview_window })
	-- vim.api.nvim_set_option_value("wrap", false, { win = self.preview_window })
end

return M
