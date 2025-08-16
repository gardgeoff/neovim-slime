local utils = require("slime.utils")

local M = {}

function M.setup(colors, config)
	-- Only setup if neo-tree is loaded
	if not utils.plugin_loaded("neo-tree") and not utils.plugin_loaded("neo-tree.nvim") then
		return
	end

	utils.highlight("NeoTreeDirectoryName", {
		fg = colors.fg,
		bg = colors.bg,
		bold = true,
	}, config)
	utils.highlight("NeoTreeDirectoryIcon", {
		fg = colors.declaration,
		bg = colors.bg,
	}, config)
	utils.highlight("NeoTreeWinSeparator", {
		fg = colors.line,
		bg = colors.bg,
	}, config)
	utils.highlight("Directory", {
		fg = colors.fg,
		bg = colors.bg,
	}, config)

	-- Additional neo-tree highlights
	utils.highlight("NeoTreeNormal", {
		fg = colors.fg,
		bg = colors.bg,
	}, config)
	utils.highlight("NeoTreeNormalNC", {
		fg = colors.fg,
		bg = colors.bg,
	}, config)
	utils.highlight("NeoTreeRootName", {
		fg = colors.declaration,
		bold = true,
	}, config)
	utils.highlight("NeoTreeFileName", {
		fg = colors.fg,
	}, config)
	utils.highlight("NeoTreeFileIcon", {
		fg = colors.accent3,
	}, config)
	utils.highlight("NeoTreeModified", {
		fg = colors.git_change,
	}, config)
	utils.highlight("NeoTreeGitAdded", {
		fg = colors.git_add,
	}, config)
	utils.highlight("NeoTreeGitDeleted", {
		fg = colors.git_delete,
	}, config)
	utils.highlight("NeoTreeGitModified", {
		fg = colors.git_change,
	}, config)
	utils.highlight("NeoTreeGitConflict", {
		fg = colors.error,
	}, config)
	utils.highlight("NeoTreeGitUntracked", {
		fg = colors.comment,
	}, config)
	utils.highlight("NeoTreeIndentMarker", {
		fg = colors.line,
	}, config)
	utils.highlight("NeoTreeExpander", {
		fg = colors.comment,
	}, config)
end

return M
