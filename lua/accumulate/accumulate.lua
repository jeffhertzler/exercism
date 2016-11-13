return function(items, f)
  local map = {}
  for _, val in ipairs(items) do
    table.insert(map, f(val))
  end
  return map
end
