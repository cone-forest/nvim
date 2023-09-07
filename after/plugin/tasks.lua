function table.contains(table, element)
  for _, value in pairs(table) do
    if value == element then
      return true
    end
  end
  return false
end

function language_specific_mappings(langs)
  local lower_g = "echo \"No <leader>g binding for this buffer\""
  local upper_g = "echo \"No <leader>G binding for this buffer\""
  local lower_b = "echo \"No <leader>b binding for this buffer\""
  local upper_b = "echo \"No <leader>B binding for this buffer\""
  local upper_r = "echo \"No <leader>R binding for this buffer\""

  if langs.contains("cpp") then
    lower_g = "CMakeGenerate"
    lower_b = "CMakeBuild"
    upper_g = "CMakeGenerate!"
    upper_b = "CMakeBuild!"
    upper_r = "CMakeRun"
  end
  if lang.contains("python") then
    echo "NO PYTHON TASKS"
  end
  if lang.contains("go") then
    echo "NO GO TASKS"
  end

  vim.keymap.set('n', "<leader>g", '<cmd>' .. lower_g .. '<CR>')
  vim.keymap.set('n', "<leader>b", '<cmd>' .. lower_b .. '<CR>')
  vim.keymap.set('n', "<leader>G", '<cmd>' .. upper_g .. '<CR>')
  vim.keymap.set('n', "<leader>B", '<cmd>' .. upper_b .. '<CR>')
  vim.keymap.set('n', "<leader>R", '<cmd>' .. upper_r .. '<CR>')
end
