local helper = require("tentara.helper")
local tentara = {}

tentara.set = function ()
	helper.load()
end

vim.cmd[[colorscheme tentara]]

return tentara
