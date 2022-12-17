local black = { "#2b2b2b", 235 }
local gray = { '#323232', 236 }
local white = { '#a9b7c6', 250 }
local blue = { '#6897bb' , 67 }
local green = { '#629755', 71 }
local purple = { '#9876aa', 104 }
local red = { '#ff6b68', 204 }
local yellow = { '#bbb529', 222 }
local orange = { '#cc7832', 255 }

local p = {
  inactive = {
    left = { { black, blue }, { blue, gray } },
    middle = { { white, gray } },
    right = { { black, blue }, { blue, gray } }
  },
  insert = {
    left = { { black, green }, { green, gray } },
    right = { { black, green }, { green, gray } }
  },
  normal = {
    error = { { red, black } },
    left = { { black, orange }, { orange, gray } },
    middle = { { white, gray } },
    right = { { black, orange }, { orange, gray } },
    warning = { { yellow, black } }
  },
  replace = {
    left = { { black, red }, { red, gray } },
    right = { { black, red }, { red, gray } }
  },
  tabline = {
    left = { { blue, gray } },
    middle = { { blue, gray } },
    right = { { black, blue } },
    tabsel = { { black, blue } }
  },
  visual = {
    left = { { black, blue }, { blue, gray } },
    right = { { black, blue }, { blue, gray } }
  }
}

vim.g['lightline#colorscheme#darcula_idea#palette'] = vim.call('g:lightline#colorscheme#flatten', p)

vim.g.lightline = {
	colorscheme = 'darcula_idea'
}

