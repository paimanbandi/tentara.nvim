local colors = require("tentara.colors")
local theme = {}

theme.load_syntax = function()
	local c = colors.generate()
	local syntax = {
		-- Default
		Normal = { c.cCurlyWillow, c.cBack, 'none', nil},
		ColorColumn = { nil, c.cCursorDarkDark, 'none', nil},
		Cursor = { c.cCursorDark, c.cCursorLight, 'none', nil},
		CursorLine = { nil, c.cCursorDarkDark, 'none', nil},
		CursorColumn = { nil, c.cCursorDarkDark, 'none', nil},
		CursorLineNr = { c.cPopupFront, c.cBack, 'none', nil},
		Debug = { c.cCurlyWillow, nil, 'none', nil},
		Directory = { c.cMediumOrchid, c.cBack, 'none', nil},
		DiffAdd = { nil, c.cDiffGreenLight, 'none', nil},
		DiffChange = { nil, c.cDiffRedDark, 'none', nil},
		DiffDelete = { nil, c.cDiffRedLight, 'none', nil},
		DiffText = { nil, c.cDiffRedLight, 'none', nil},
		EndOfBuffer = { c.cBack, nil, 'none', nil},
		ErrorMsg = { c.cJapaneseLaurel, c.cBack, 'none', nil},
		VertSplit = { c.cSplitDark, c.cBack, 'none', nil},
		Folded = { c.cLeftLight, c.cLeftDark, 'underline', nil},
		FoldColumn = { c.cLineNumber, c.cBack, 'none', nil},
		SignColumn = { nil, c.cBack, 'none', nil},
		IncSearch = { c.cNone, c.cSearchCurrent, 'none', nil},
		LineNr = { c.cLineNumber, c.cBack, 'none', nil},
		MatchParen = { c.cNone, c.cCursorDark, 'none', nil},
		ModeMsg = { c.cCurlyWillow, c.cLeftDark, 'none', nil},
		MoreMsg = { c.cCurlyWillow, c.cLeftDark, 'none', nil},
		NonText = { c.cLineNumber, c.cBack, 'none', nil},
		Pmenu = { c.cPopupFront, c.cPopupBack, 'none', nil},
		PmenuSel = { c.cPopupFront, c.cPopupHighlightBlue, 'none', nil},
		PmenuSbar = { nil, c.cPopupHighlightGray, 'none', nil},
		PmenuThumb = { nil, c.cPopupFront, 'none', nil},
		Question = { c.cPictonBlue, c.cBack, 'none', nil},
		Search = { c.cNone, c.cSearch, 'none', nil},
		SpecialKey = { c.cViolet, c.cNone, 'none', nil},
		StatusLine = { c.cCurlyWillow, c.cLeftMid, 'none', nil},
		StatusLineNC = { c.cCurlyWillow, c.cLeftDark, 'none', nil},
		TabLine = { c.cCurlyWillow, c.cTabOther, 'none', nil},
		TabLineFill = { c.cCurlyWillow, c.cTabOutside, 'none', nil},
		TabLineSel = { c.cCurlyWillow, c.cTabCurrent, 'none', nil},
		Title = { c.cNone, c.cNone, 'bold', nil},
		Visual = { c.cNone, c.cSelection, 'none', nil},
		VisualNOS = { c.cNone, c.cSelection, 'none', nil},
		WarningMsg = { c.cTenne, c.cBack, 'none', nil},
		WildMenu = { c.cNone, c.cSelection, 'none', nil},
		Comment =  { c.cGray, nil, 'none', nil},
		Constant = { c.cNone, nil, 'none', nil},
		String = { c.cOlive, nil, 'none', nil},
		Character = { c.cTenne, nil, 'none', nil},
		Number = { c.cLightGreen, nil, 'none', nil},
		Boolean = { c.cPictonBlue, nil, 'none', nil},
		Float = { c.cLightGreen, nil, 'none', nil},
		Identifier = { c.cCurlyWillow, nil, 'none', nil},
		Function = { c.cTenne, nil, 'none', nil},
		Statement = { c.cThunderbird, nil, 'bold', nil}, -- return
		Conditional = { c.cThunderbird, nil, 'none', nil}, -- if-else
		Repeat = { c.cThunderbird, nil, 'none', nil}, -- for
		Label = { c.cTapestry, nil, 'none', nil},
		Operator = { c.cCurlyWillow, nil, 'none', nil},
		Keyword = { c.cViolet, nil, 'none', nil}, -- async-await
		Exception = { c.cThunderbird, nil, 'none', nil}, -- try-catch
		PreProc = { c.cTapestry, nil, 'none', nil},
		Include = { c.cMediumOrchid, nil, 'none', nil}, -- import
		Define = { c.cTapestry, nil, 'none', nil},
		Macro = { c.cTapestry, nil, 'none', nil},
		Type = { c.cJapaneseLaurel, nil, 'none', nil}, -- class name
		StorageClass = { c.cPictonBlue, nil, 'none', nil}, -- const, let, var
		Structure = { c.cPictonBlue, nil, 'none', nil},
		Typedef = { c.cPictonBlue, nil, 'none', nil},
		Special = { c.cYellowOrange, nil, 'none', nil},
		SpecialChar = { c.cCurlyWillow, nil, 'none', nil},
		Tag = { c.cCurlyWillow, nil, 'none', nil},
		Delimiter = { c.cCurlyWillow, nil, 'none', nil},
		SpecialComment = { c.cJapaneseLaurel, nil, 'none', nil},
		Underlined = { c.cNone, nil, 'underline', nil},
		Conceal =  {c.cPeridot, c.cBack,  'none', nil},
		Ignore = { c.cCurlyWillow, nil, 'none', nil},
		Error = { c.cJapaneseLaurel, c.cBack, 'undercurl', c.cJapaneseLaurel},
		Todo = { c.cBack, c.cTapestry, 'bold', nil},
		SpellBad = { c.cJapaneseLaurel, c.cBack, 'undercurl', c.cJapaneseLaurel},
		SpellCap = { c.cJapaneseLaurel, c.cBack, 'undercurl', c.cJapaneseLaurel},
		SpellRare = { c.cJapaneseLaurel, c.cBack, 'undercurl', c.cJapaneseLaurel},
		SpellLocal = { c.cJapaneseLaurel, c.cBack, 'undercurl', c.cJapaneseLaurel},

		-- Markdown
		markdownBold = { c.cPictonBlue, nil, 'bold', nil},
		markdownCode = { c.cTenne, nil, 'none', nil},
		markdownRule = { c.cPictonBlue, nil, 'bold', nil},
		markdownCodeDelimiter = { c.cTenne, nil, 'none', nil},
		markdownHeadingDelimiter = { c.cPictonBlue, nil, 'none', nil},
		markdownFootnote = { c.cTenne, nil, 'none', nil},
		markdownFootnoteDefinition = { c.cTenne, nil, 'none', nil},
		markdownUrl = { c.cCurlyWillow, nil, 'underline', nil},
		markdownLinkText = { c.cTenne, nil, 'none', nil},
		markdownEscape = { c.cYellowOrange, nil, 'none', nil},

		-- JSON
		jsonKeyword = { c.cCurlyWillow, nil, 'none', nil},
		jsonEscape = { c.cYellowOrange, nil, 'none', nil},
		jsonNull = { c.cPictonBlue, nil, 'none', nil},
		jsonBoolean = { c.cPictonBlue, nil, 'none', nil},

		-- HTML
		htmlTag = { c.cGray, nil, 'none', nil},
		htmlEndTag = { c.cGray, nil, 'none', nil},
		htmlTagName = { c.cPictonBlue, nil, 'none', nil},
		htmlSpecialTagName = { c.cPictonBlue, nil, 'none', nil},
		htmlArg = { c.cCurlyWillow, nil, 'none', nil},

		-- CSS
		cssBraces = { c.cCurlyWillow, nil, 'none', nil},
		cssInclude = { c.cTapestry, nil, 'none', nil},
		cssTagName = { c.cYellowOrange, nil, 'none', nil},
		cssClassName = { c.cYellowOrange, nil, 'none', nil},
		cssPseudoClass = { c.cYellowOrange, nil, 'none', nil},
		cssPseudoClassId = { c.cYellowOrange, nil, 'none', nil},
		cssPseudoClassLang = { c.cYellowOrange, nil, 'none', nil},
		cssIdentifier = { c.cYellowOrange, nil, 'none', nil},
		cssProp = { c.cCurlyWillow, nil, 'none', nil},
		cssDefinition = { c.cCurlyWillow, nil, 'none', nil},
		cssAttr = { c.cTenne, nil, 'none', nil},
		cssAttrRegion = { c.cTenne, nil, 'none', nil},
		cssColor = { c.cTenne, nil, 'none', nil},
		cssFunction = { c.cTenne, nil, 'none', nil},
		cssFunctionName = { c.cTenne, nil, 'none', nil},
		cssVendor = { c.cTenne, nil, 'none', nil},
		cssValueNumber = { c.cTenne, nil, 'none', nil},
		cssValueLength = { c.cTenne, nil, 'none', nil},
		cssUnitDecorators = { c.cTenne, nil, 'none', nil},
		cssStyle = { c.cCurlyWillow, nil, 'none', nil},
		cssImportant = { c.cPictonBlue, nil, 'none', nil},

		-- JavaScript
		jsVariableDef = { c.cCurlyWillow, nil, 'none', nil},
		jsFuncBlock = { c.cCurlyWillow, nil, 'none', nil},
		jsRegexpString = { c.cLightRed, nil, 'none', nil},
		jsThis = { c.cPictonBlue, nil, 'none', nil},
		jsOperatorKeyword = { c.cPictonBlue, nil, 'none', nil},
		jsDestructuringBlock = { c.cCurlyWillow, nil, 'none', nil},
		jsObjectKey = { c.cTapestry, nil, 'none', nil},
		jsObjectValue = { c.cCurlyWillow, nil, 'none', nil},
		jsGlobalObjects = { c.cMediumTurquoise, nil, 'none', nil},
		jsModuleKeyword = { c.cCurlyWillow, nil, 'none', nil},
		jsClassDefinition = { c.cMediumTurquoise, nil, 'none', nil},
		jsClassKeyword = { c.cPictonBlue, nil, 'none', nil},
		jsExtendsKeyword = { c.cPictonBlue, nil, 'none', nil},
		jsExportDefault = { c.cTapestry, nil, 'none', nil},
    jsFunction = { c.cPictonBlue, nil, 'none', nil }, -- function keyword
		jsFuncCall = { c.cLightOrange, nil, 'none', nil},
    jsFuncArgs = { c.cPeridot, nil, 'none', nil},
    jsArrowFuncArgs = { c.cPeridot, nil, 'none', nil},
    jsFuncArgCommas = { c.cPeridot, nil, 'none', nil},
    jsFuncArgExpression = { c.cPeridot, nil, 'none', nil},
		jsParen = { c.cCurlyWillow, nil, 'none', nil},
		jsObjectProp = { c.cCurlyWillow, nil, 'none', nil},
		jsIfElseBlock = { c.cCurlyWillow, nil, 'none', nil},
		jsParenIfElse = { c.cCurlyWillow, nil, 'none', nil},
		jsSpreadOperator = { c.cCurlyWillow, nil, 'none', nil},
		jsSpreadExpression = { c.cCurlyWillow, nil, 'none', nil},
    jsArrowFunction = { c.cPictonBlue, nil, 'none', nil },
    jsNull = { c.cGray, nil, 'none', nil },
    jsUndefined = { c.cGray, nil, 'none', nil },
    jsNoise = { c.cViolet, nil, 'none', nil },

		-- Git
		gitcommitHeader = { c.cGray, nil, 'none', nil},
		gitcommitOnBranch = { c.cGray, nil, 'none', nil},
		gitcommitBranch = { c.cTapestry, nil, 'none', nil},
		gitcommitComment = { c.cGray, nil, 'none', nil},
		gitcommitSelectedType = { c.cJapaneseLaurel, nil, 'none', nil},
		gitcommitSelectedFile = { c.cJapaneseLaurel, nil, 'none', nil},
		gitcommitDiscardedType = { c.cJapaneseLaurel, nil, 'none', nil},
		gitcommitDiscardedFile = { c.cJapaneseLaurel, nil, 'none', nil},
		gitcommitOverflow = { c.cJapaneseLaurel, nil, 'none', nil},
		gitcommitSummary = { c.cTapestry, nil, 'none', nil},
		gitcommitBlank = { c.cTapestry, nil, 'none', nil},

		-- Lua
		luaFuncCall = { c.cYellow, nil, 'none', nil},
		luaFuncArgName = { c.cCurlyWillow, nil, 'none', nil},
		luaFuncKeyword = { c.cTapestry, nil, 'none', nil},
		luaLocal = { c.cTapestry, nil, 'none', nil},
		luaBuiltIn = { c.cPictonBlue, nil, 'none', nil},

		-- SH
		shDeref = { c.cCurlyWillow, nil, 'none', nil},
		shVariable = { c.cCurlyWillow, nil, 'none', nil},

		-- SQL
		sqlKeyword = { c.cTapestry, nil, 'none', nil},
		sqlFunction = { c.cYellowOrange, nil, 'none', nil},
		sqlOperator = { c.cTapestry, nil, 'none', nil},

		-- YAML
		yamlKey = { c.cPictonBlue, nil, 'none', nil},
		yamlConstant = { c.cPictonBlue, nil, 'none', nil},

		-- Git Signs
		GitSignsAdd = { c.cJapaneseLaurel, nil, 'none', nil},
		GitSignsChange = { c.cYellow, nil, 'none', nil},
		GitSignsDelete = { c.cJapaneseLaurel, nil, 'none', nil},
		GitSignsAddLn = { c.cBack, c.cJapaneseLaurel, 'none', nil},
		GitSignsChangeLn = { c.cBack, c.cYellow, 'none', nil},
		GitSignsDeleteLn = { c.cBack, c.cJapaneseLaurel, 'none', nil},

		-- NvimTree
		NvimTreeRootFolder = { c.cMediumOrchid, nil, 'bold', nil},
		NvimTreeGitDirty = { c.cYellow, nil, 'none', nil},
		NvimTreeGitNew = { c.cJapaneseLaurel, nil, 'none', nil},
		NvimTreeImageFile = { c.cViolet, nil, 'none', nil},
		NvimTreeEmptyFolderName = { c.cGray, nil, 'none', nil},
		NvimTreeFolderName = { c.cCurlyWillow, nil, 'none', nil},
		NvimTreeSpecialFile = { c.cTapestry, nil, 'underline', nil},
		NvimTreeNormal  = { c.cCurlyWillow, c.cLeftDark, 'none', nil},
		NvimTreeCursorLine = { nil, c.cLeftMid, 'none', nil},
		NvimTreeVertSplit = { c.cBack, c.cBack, 'none', nil},
		NvimTreeEndOfBuffer = { c.cLeftDark, nil, 'none', nil},
		NvimTreeOpenedFolderName = { nil, c.cLeftDark, 'none', nil},

		-- IndentBlankLine
		IndentBlanklineContextChar = { c.cJapaneseLaurel, nil, "nocombine", nil},

		-- LSP
		LspDiagnosticsDefaultError = { c.cJapaneseLaurel, nil, 'none', nil},
		LspDiagnosticsDefaultWarning = { c.cYellow, nil, 'none', nil},
		LspDiagnosticsDefaultInformation = { c.cPictonBlue, nil, 'none', nil},
		LspDiagnosticsDefaultHint = { c.cPictonBlue, nil, 'none', nil},
		LspDiagnosticsUnderlineError = { c.cJapaneseLaurel, nil, 'undercurl', nil},
		LspDiagnosticsUnderlineWarning = { c.cYellow, nil, 'undercurl', nil},
		LspDiagnosticsUnderlineInformation = { c.cPictonBlue, nil, 'undercurl', nil},
		LspDiagnosticsUnderlineHint = { c.cPictonBlue, nil, 'undercurl', nil},
		LspReferenceText = { c.cYellowOrange, nil, 'none', nil},
		LspReferenceRead = { c.cYellowOrange, nil, 'none', nil},
		LspReferenceWrite = { c.cYellowOrange, nil, 'none', nil},
	}

		syntax.NvimTreeFolderIcon = { c.cJapaneseLaurel, nil, 'none', nil}
		syntax.NvimTreeIndentMarker = { c.cLineNumber, nil, 'none', nil}
		syntax.IndentBlanklineChar = { c.cLineNumber, nil, "nocombine", nil}
		syntax.IndentBlanklineSpaceChar = { c.cLineNumber, nil, "nocombine", nil}

		syntax.LspFloatWinNormal = { c.cCurlyWillow, nil, 'none', nil}
		syntax.LspFloatWinBorder = { c.cLineNumber, nil, 'none', nil}
		syntax.LspSagaHoverBorder = { c.cLineNumber, nil, 'none', nil}
		syntax.LspSagaSignatureHelpBorder = { c.cLineNumber, nil, 'none', nil}
		syntax.LspSagaCodeActionBorder = { c.cLineNumber, nil, 'none', nil}
		syntax.LspSagaDefPreviewBorder = { c.cLineNumber, nil, 'none', nil}
		syntax.LspLinesDiagBorder = { c.cLineNumber, nil, 'none', nil}
		syntax.LspSagaRenameBorder = { c.cLineNumber, nil, 'none', nil}
		syntax.LspSagaBorderTitle = { c.cCursorDark, nil, 'none', nil}
		syntax.LSPSagaDiagnosticTruncateLine = { c.cLineNumber, nil, 'none', nil}
		syntax.LspSagaDiagnosticBorder = { c.cLineNumber, nil, 'none', nil}
		syntax.LspSagaDiagnosticBorder = { c.cLineNumber, nil, 'none', nil}
		syntax.LspSagaShTruncateLine = { c.cLineNumber, nil, 'none', nil}
		syntax.LspSagaShTruncateLine = { c.cLineNumber, nil, 'none', nil}
		syntax.LspSagaDocTruncateLine = { c.cLineNumber, nil, 'none', nil}
		syntax.LspSagaRenameBorder = { c.cLineNumber, nil, 'none', nil}
		syntax.LspSagaLspFinderBorder = { c.cLineNumber, nil, 'none', nil}

		syntax.TelescopePromptBorder = { c.cLineNumber, nil, 'none', nil}
		syntax.TelescopeResultsBorder = { c.cLineNumber, nil, 'none', nil}
		syntax.TelescopePreviewBorder = { c.cLineNumber, nil, 'none', nil}
		syntax.TelescopeNormal = {c.cCurlyWillow, nil, 'none', nil}
		syntax.TelescopeSelection = {c.cCurlyWillow, c.cUiBlue, 'none', nil}
		syntax.TelescopeMultiSelection = {c.cCurlyWillow, c.cUiBlue, 'none', nil}
		syntax.TelescopeMatching = {c.cPictonBlue, nil, 'none', nil}
		syntax.TelescopePromptPrefix = {c.cCurlyWillow, nil, 'none', nil}

	return syntax
end

theme.link_highlight = function ()
	vim.api.nvim_command("hi! link diffAdded DiffAdd")
	vim.api.nvim_command("hi! link diffChanged DiffChange")
	vim.api.nvim_command("hi! link diffRemoved DiffDelete")
end

return theme
