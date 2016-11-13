local M = {}

function M.hello(name)
  name = name or 'world'
  return 'Hello, ' .. name .. '!'
end

return M
