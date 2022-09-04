local function oscapture(cmd, raw)
    local handle = assert(io.popen(cmd, 'r'))
    local output = assert(handle:read('*a'))
    
    handle:close()
    
    return output
end

local function keylayout()
  return(oscapture("/usr/local/bin/xkb-switch -et"))
end

local function capslock()
  local line = oscapture('xset q')
  if line:match("Caps Lock") then
    local status = line:gsub(".*(Caps Lock:%s+)(%a+).*", "%2")
    if status == "on" then
      return "CAPS "
    else
      return ""
    end
  end
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'base16',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {{
      'filename',
      path = 1,
    }},
    lualine_x = {{capslock, color = {fg = vim.g.terminal_color_0, bg = vim.g.terminal_color_3}}, {keylayout}, 'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

