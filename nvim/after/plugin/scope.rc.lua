local status, scope = pcall(require, 'scope')
if (not status) then return end

require("scope").setup()
