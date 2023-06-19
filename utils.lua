local M = {}

function M.zoom(step)
  local current_zoom = vim.api.nvim_get_option('linespace')
  local new_zoom = current_zoom + step
  if new_zoom < 0 then
    new_zoom = 0
  end
  vim.api.nvim_set_option('linespace', new_zoom)
end

return M
