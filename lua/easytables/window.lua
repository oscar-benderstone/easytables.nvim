local M = {}

---Create a new window for the given table
---@param my_table table
---@param options table
function M:create(my_table, options)
	options = options or {}

	self.table = my_table
	self.preview = vim.api.nvim_get_current_win()

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
	-- Don't open window again if it's already opened
	if self.previous_window then
		return
	end
end

return M
