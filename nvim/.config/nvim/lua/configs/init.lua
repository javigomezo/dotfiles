local o = vim.opt

-- Enable line numbers & relative line numbers
o.number = true
o.relativenumber = true

-- Enable mouse
o.mouse = "a"

-- Enable tabs & spaces
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2

-- Enable line wrapping
o.wrap = true

-- Enable undo
o.undofile = true
o.undodir = os.getenv("HOME") .. "/.nvim/undodir"

-- Improve search
o.ignorecase = true
o.smartcase = true
o.hlsearch = false

