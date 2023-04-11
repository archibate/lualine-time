-- Inspired by: https://github.com/arkav/lualine-lsp-progress

local CTimeLine = require('lualine.component'):extend()

CTimeLine.init = function(self, options)
	CTimeLine.super.init(self, options)
end

CTimeLine.update_status = function(self)
    return os.date("%H:%M:%S", os.time())
end

return CTimeLine
