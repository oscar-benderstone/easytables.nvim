local M = {}

function M.new()
	return vim.notify("Unimplemented!", vim.log.levels.ERROR, { title = "easytables.nvim" })
end

function M.export() end

function M.import() end

---Initialize `easytables` with the given options.
--- This function **must** be called.
---@param options table See options.lua for available options
function M.setup(options)
	options = options or {}
end

return M
