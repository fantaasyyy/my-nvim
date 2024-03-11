local g = vim.g
local opt = vim.opt
local cmd = vim.cmd


-- Original Command in vimscript
cmd[[ 
  autocmd FileType css setl iskeyword+=-
  autocmd FileType scss setl iskeyword+=@-@

  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions -=o
]]


vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])


---------------------------------
-- Mensagem flutuante
---------------------------------
vim.diagnostic.config({
  float = { source = "always", border = border },
  virtual_text = false,
  signs = true,
})

---------------------------------
-- Auto commands
---------------------------------
vim.cmd([[ autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

-- SuperTab setup
g.SuperTabDefaultCompletionType = '<C-n>'

-- General Setup
vim.cmd([[ set bg=dark ]])
vim.cmd([[ set termguicolors ]])
opt.compatible = false
opt.mouse = 'a'
opt.swapfile = false
opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.synmaxcol = 240

-- theme
vim.cmd([[ colorscheme moonfly]])

-- Editor
opt.number = true
opt.wrap = false
opt.signcolumn = 'yes'
opt.showmatch = true
opt.showmode = false
opt.foldmethod = 'marker'
opt.splitright = true
opt.splitbelow = true
opt.conceallevel = 0
--opt.colorcolumn = '100'
opt.cursorline = true
opt.scrolloff = 10
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.list = true
opt.shortmess:append { c = true }
opt.whichwrap:append {
	['<'] = true,
	['>'] = true,
	[','] = true,
	h = true,
	l = true
}

-- Terminal
cmd [[command! Term :botright split term://$SHELL]]
cmd [[
  autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
  autocmd TermOpen * startinsert
  autocmd BufLeave term://* stopinser]]

-- Floaterminal setup
cmd [[
  let g:floaterm_keymap_new = '<Leader>ft'
  let g:floaterm_keymap_prev = '<Leader>fp'
  let g:floaterm_keymap_next = '<Leader>fn'
  let g:floaterm_keymap_toggle = '<Leader>t'
  let g:floaterm_keymap_kill = '<Leader>fk'
  let g:floaterm_title='>( /ᐠ｡ꞈ｡ᐟ\ )<'
]]
