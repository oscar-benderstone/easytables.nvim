local M = {}

local window = require("window")

function M.new()
	-- Draw a window at the cursor's position.
	-- Make 1x1 the default
	-- (unless configured differently).
	-- TODO: implement wrapping?
	-- See: https://github.com/andrewferrier/wrapping.nvim

	window:create({}, {})
	window:show()
end

function M.export() end

function M.import() end

---Initialize `easytables` with the given options.
--- This function **must** be called.
---@param options table See options.lua for available options
function M.setup(options)
	options = options or {}
end

print("TEST")
M.new()

return M
