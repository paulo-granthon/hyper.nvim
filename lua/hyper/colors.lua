local M = {}

function M.get()
    return {
        Cursor = { fg = '#cc00ff', bg = '#ffffff' },
        Visual = { fg = 'NONE', bg = 'NONE', reverse = true },
        CursorLine = { fg = 'NONE', bg = '#000000' },
        CursorColumn = { fg = 'NONE', bg = '#000000' },
        ColorColumn = { fg = 'NONE', bg = '#333333' },
        LineNr = { fg = '#3a3a3a', bg = '#000000' },
        VertSplit = { fg = '#3a3a3a', bg = '#000000', bold = true },
        MatchParen = { fg = '#ff0000', bg = 'NONE', underline = true },
        StatusLine = { fg = '#ffffff', bg = '#333333', bold = true },
        StatusLineNC = { fg = '#ffffff', bg = '#333333' },
        Pmenu = { fg = 'NONE', bg = 'NONE' },
        PmenuSel = { fg = 'NONE', bg = '#000000' },
        IncSearch = { fg = '#000000', bg = '#ffff00' },
        Search = { fg = 'NONE', bg = 'NONE', underline = true },
        Directory = { fg = '#cc00ff', bg = 'NONE' },
        Folded = { fg = '#cc00ff', bg = '#000000' },
        SignColumn = { fg = '#333333', bg = '#000000' },
        FoldColmun = { fg = '#333333', bg = '#000000' },
        Normal = { fg = '#ffffff', bg = '#000000' },
        Boolean = { fg = '#cc00ff', bg = 'NONE' },
        Character = { fg = '#cc00ff', bg = 'NONE' },
        Comment = { fg = '#808080', bg = 'NONE' },
        Conditional = { fg = '#ff0000', bg = 'NONE' },
        Constant = { fg = 'NONE', bg = 'NONE' },
        Define = { fg = '#ff0000', bg = 'NONE' },

        DiffLine = { fg = '#000000', bg = '#cc00ff', bold = true, italic = true },
        DiffAdd = { fg = '#ffffff', bg = '#33ff00', bold = true },
        DiffAdded = { fg = 'NONE', bg = '#33ff00' },
        DiffDelete = { fg = '#ff0000', bg = 'NONE', bold = true },
        DiffRemoved = { fg = 'NONE', bg = '#ff0000' },
        DiffChange = { fg = '#ffffff', bg = '#0066ff' },
        DiffText = { fg = '#ffffff', bg = '#0066ff', bold = true },

        fugitiveUntrackedHeading = { fg = '#ff0000', bg = 'NONE', bold = true, italic = false },
        fugitiveUnstagedHeading = { fg = '#0066ff', bg = 'NONE', bold = true, italic = false },
        fugitiveStagedHeading = { fg = '#cc00ff', bg = 'NONE', bold = true, italic = false },

        fugitiveUntrackedSection = { fg = '#0066ff', bg = 'NONE', italic = true },
        fugitiveUnstagedSection = { fg = '#0066ff', bg = 'NONE', italic = true },
        fugitiveStagedSection = { fg = '#0066ff', bg = 'NONE', italic = true },

        ErrorMsg = { fg = '#ffffff', bg = '#ff0000' },
        WarningMsg = { fg = '#ffffff', bg = '#ff0000' },
        Float = { fg = '#cc00ff', bg = 'NONE' },
        Function = { fg = '#0066ff', bg = 'NONE' },
        Identifier = { fg = '#33ff00', bg = 'NONE', italic = true },
        Keyword = { fg = '#ff0000', bg = 'NONE' },
        Label = { fg = '#ffff00', bg = 'NONE' },
        NonText = { fg = '#333333', bg = '#000000' },
        Number = { fg = '#cc00ff', bg = 'NONE' },
        Operator = { fg = '#ff0000', bg = 'NONE' },
        PreProc = { fg = '#ff0000', bg = 'NONE' },
        Special = { fg = '#ffffff', bg = 'NONE' },
        SpecialKey = { fg = '#333333', bg = '#000000' },
        Statement = { fg = '#ff0000', bg = 'NONE' },
        StorageClass = { fg = '#33ff00', bg = 'NONE', italic = true },
        String = { fg = '#ffff00', bg = 'NONE' },
        Tag = { fg = '#ff0000', bg = 'NONE' },
        Title = { fg = '#ffffff', bg = 'NONE', bold = true },
        Todo = { fg = 'NONE', bg = '#cc00ff', bold = true },
        Type = { fg = '#33ff00', bg = 'NONE' },
        Underlined = { fg = 'NONE', bg = 'NONE', underline = true },

        TabLineFill = { fg = '#333333', bg = '#000000', },
        TabLine = { fg = '#666666', bg = '#000000', },
        TabLineSel = { fg = '#ffffff', bg = '#000000', },

        rubyClass = { fg = '#ff0000', bg = 'NONE' },
        rubyFunction = { fg = '#0066ff', bg = 'NONE' },
        rubyInterpolationDelimiter = { fg = 'NONE', bg = 'NONE' },
        rubySymbol = { fg = '#cc00ff', bg = 'NONE' },
        rubyConstant = { fg = '#33ff00', bg = 'NONE', italic = true },
        rubyStringDelimiter = { fg = '#ffff00', bg = 'NONE' },
        rubyBlockParameter = { fg = '#ffff00', bg = 'NONE', italic = true },
        rubyInstanceVariable = { fg = 'NONE', bg = 'NONE' },
        rubyInclude = { fg = '#ff0000', bg = 'NONE' },
        rubyGlobalVariable = { fg = 'NONE', bg = 'NONE' },
        rubyRegexp = { fg = '#ffff00', bg = 'NONE' },
        rubyRegexpDelimiter = { fg = '#ffff00', bg = 'NONE' },
        rubyEscape = { fg = '#cc00ff', bg = 'NONE' },
        rubyControl = { fg = '#ff0000', bg = 'NONE' },
        rubyClassVariable = { fg = 'NONE', bg = 'NONE' },
        rubyOperator = { fg = '#ff0000', bg = 'NONE' },
        rubyException = { fg = '#ff0000', bg = 'NONE' },
        rubyPseudoVariable = { fg = 'NONE', bg = 'NONE' },
        rubyRailsUserClass = { fg = '#33ff00', bg = 'NONE', italic = true },
        rubyRailsARAssociationMethod = { fg = '#33ff00', bg = 'NONE' },
        rubyRailsARMethod = { fg = '#33ff00', bg = 'NONE' },
        rubyRailsRenderMethod = { fg = '#33ff00', bg = 'NONE' },
        rubyRailsMethod = { fg = '#33ff00', bg = 'NONE' },
        erubyDelimiter = { fg = 'NONE', bg = 'NONE' },
        erubyComment = { fg = '#cc00ff', bg = 'NONE' },
        erubyRailsMethod = { fg = '#33ff00', bg = 'NONE' },

        htmlTag = { fg = 'NONE', bg = 'NONE' },
        htmlEndTag = { fg = 'NONE', bg = 'NONE' },
        htmlTagName = { fg = 'NONE', bg = 'NONE' },
        htmlArg = { fg = 'NONE', bg = 'NONE' },
        htmlSpecialChar = { fg = '#cc00ff', bg = 'NONE' },

        javaScriptFunction = { fg = '#33ff00', bg = 'NONE', italic = true },
        javaScriptRailsFunction = { fg = '#33ff00', bg = 'NONE' },
        javaScriptBraces = { fg = 'NONE', bg = 'NONE' },

        yamlKey = { fg = '#ff0000', bg = 'NONE' },
        yamlAnchor = { fg = 'NONE', bg = 'NONE' },
        yamlAlias = { fg = 'NONE', bg = 'NONE' },
        yamlDocumentHeader = { fg = '#ffff00', bg = 'NONE' },

        cssURL = { fg = '#ffff00', bg = 'NONE', italic = true },
        cssFunctionName = { fg = '#33ff00', bg = 'NONE' },
        cssColor = { fg = '#cc00ff', bg = 'NONE' },
        cssPseudoClassId = { fg = '#0066ff', bg = 'NONE' },
        cssClassName = { fg = '#0066ff', bg = 'NONE' },
        cssValueLength = { fg = '#cc00ff', bg = 'NONE' },
        cssCommonAttr = { fg = '#0066ff', bg = 'NONE' },
        cssBraces = { fg = 'NONE', bg = 'NONE' },

        elixirAtom = { fg = '#33ff00', bg = 'NONE', italic = true },
        elixirModuleDeclaration = { fg = '#33ff00', bg = 'NONE', italic = true },
        elixirAlias = { fg = '#33ff00', bg = 'NONE', italic = true },
        elixirInterpolationDelimiter = { fg = '#0066ff', bg = 'NONE' },
        elixirStringDelimiter = { fg = '#ffff00', bg = 'NONE' },

        vimGroupName = { fg = '#33ff00', bg = 'NONE' },
        vimGroup = { fg = '#33ff00', bg = 'NONE' },
        vimOption = { fg = '#33ff00', bg = 'NONE' },
        vimHiCtermFgBg = { fg = 'NONE', bg = 'NONE' },
        vimHiGuiFgBg = { fg = 'NONE', bg = 'NONE' }
    }
end

return M
