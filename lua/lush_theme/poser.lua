-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8

local lush = require('lush')
local hsl = lush.hsl

local background = hsl("#151515")
local foreground = hsl("#dcdcdc")
local gray       = hsl("#888888")
local darkgray   = hsl("#282828")
local green      = hsl("#99ad6a")
local sogreen    = hsl("#00ff00")
local yellow     = hsl("#ffdc00")
local orange     = hsl("#ffa500")
local blue       = hsl("#96a6c8")
local red        = hsl("#ff0000")
local brown      = hsl("#8a5c00")

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- See :h highlight-groups
    --
    ColorColumn    { fg=foreground, bg=darkgray }, -- Columns set with 'colorcolumn'
    -- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor         { bg=gray }, -- Character under the cursor
    -- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine     { }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory      { fg=yellow, gui="bold" }, -- Directory names (and other special names in listings)
    DiffAdd        { fg=sogreen }, -- Diff mode: Added line |diff.txt|
    DiffChange     { }, -- Diff mode: Changed line |diff.txt|
    DiffDelete     { fg=red }, -- Diff mode: Deleted line |diff.txt|
    DiffText       { fg=orange }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    -- ErrorMsg       { }, -- Error messages on the command line
    -- VertSplit      { }, -- Column separating vertically split windows
    -- Folded         { }, -- Line used for closed folds
    -- FoldColumn     { }, -- 'foldcolumn'
    -- SignColumn     { }, -- Column where |signs| are displayed
    -- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    LineNr         { fg=yellow }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNrAbove    { fg=darkgray }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    LineNrBelow    { fg=darkgray }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    -- CursorLineNr   { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen     { fg=background, bg=yellow }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg        { fg=foreground }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea        { fg=foreground }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { }, -- |more-prompt|
    NonText        { fg=darkgray }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal         { bg=background, fg=foreground }, -- Normal text
    NormalFloat    { bg=darkgray, fg=foreground }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
    FloatTitle     { fg=orange }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    Pmenu          { bg=darkgray, fg=foreground }, -- Popup menu: Normal item.
    PmenuSel       { bg=gray, fg=darkgray }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    -- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
    -- Question       { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search         { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine     { fg=foreground }, -- Status line of current window
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine        { bg=darkgray, fg=gray }, -- Tab pages line, not active tab page label
    TabLineFill    { bg=darkgray }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    Title          { fg=orange }, -- Titles for output from ":set all", ":autocmd" etc.
    -- Visual         { }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg     { }, -- Warning messages
    -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu       { }, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- See :h group-name

    Comment        { fg=brown }, -- Any comment

    Constant       { fg=foreground }, -- (*) Any constant
    String         { fg=green }, --   A string constant: "this is a string"
    Character      { fg=green }, --   A character constant: 'c', '\n'
    Number         { fg=foreground }, --   A number constant: 234, 0xff
    Boolean        { fg=yellow }, --   A boolean constant: TRUE, false
    Float          { fg=foreground }, --   A floating point constant: 2.3e10

    Identifier     { fg=foreground }, -- (*) Any variable name
    Function       { fg=blue }, --   Function name (also: methods for classes)

    Statement      { fg=yellow, gui="bold" }, -- (*) Any statement
    Conditional    { fg=yellow }, --   if, then, else, endif, switch, etc.
    Repeat         { fg=yellow }, --   for, do, while, etc.
    Label          { fg=yellow }, --   case, default, etc.
    Operator       { fg=foreground }, --   "sizeof", "+", "*", etc.
    Keyword        { fg=yellow, gui="bold" }, --   any other keyword
    Exception      { fg=yellow, gui="bold" }, --   try, catch, throw

    PreProc        { fg=gray }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg=gray, gui="bold" }, -- (*) int, long, char, etc.
    StorageClass   { fg=yellow, gui="bold" }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    Typedef        { fg=yellow, gui="bold" }, --   A typedef

    Special        { fg=foreground }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    Delimiter      { fg=foreground }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          { }, -- Any erroneous construct
    Todo           { gui="bold" }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- vim-fugitive
    --
    diffRemoved    { fg=red }, -- Any erroneous construct
    diffAdded      { fg=green }, -- Added diff

    -- MatLab
    matlabFunction { fg=yellow, gui="bold" },

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { }, -- Used for highlighting "text" references
    -- LspReferenceRead            { }, -- Used for highlighting "read" references
    -- LspReferenceWrite           { }, -- Used for highlighting "write" references
    -- LspCodeLens                 { }, -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { }, -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { }, -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- DiagnosticError            { }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticOk               { }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { }, -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { }, -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { }, -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { }, -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { }, -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { }, -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { }, -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { }, -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { }, -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { }, -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { }, -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { }, -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { }, -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { }, -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { }, -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { }, -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { }, -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { }, -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { }, -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { }, -- Used for "Ok" signs in sign column.

    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!

    sym"@text.literal"      { fg=foreground }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    sym"@text.title"        { fg=orange }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    sym"@text.todo"         { gui="bold" }, -- Todo
    sym"@comment"           { fg=brown }, -- Comment
    sym"@punctuation"       { fg=foreground }, -- Delimiter
    sym"@constant"          { fg=orange }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    sym"@string"            { fg=green }, -- String
    sym"@string.escape"     { fg=green }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    sym"@character"         { fg=green }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    sym"@function"          { fg=foreground }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    sym"@method"            { fg=blue }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { fg=blue }, -- Identifier
    sym"@constructor"       { fg=gray }, -- Special
    sym"@conditional"       { fg=yellow, gui="bold" }, -- Conditional
    sym"@repeat"            { fg=yellow, gui="bold" }, -- Repeat
    sym"@label"             { fg=yellow, gui="bold" }, -- Label
    sym"@operator"          { fg=foreground }, -- Operator
    sym"@keyword"           { fg=yellow, gui="bold" }, -- Keyword
    sym"@exception"         { fg=yellow, gui="bold" }, -- Exception
    -- sym"@variable"          { }, -- Identifier
    sym"@variable.builtin"  { fg=yellow, gui="bold" }, -- Identifier
    sym"@type"              { fg=gray }, -- Type
    sym"@type.definition"   { fg=gray }, -- Typedef
    sym"@storageclass"      { fg=yellow, gui="bold" }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    sym"@include"           { fg=gray }, -- Include
    sym"@preproc"           { fg=gray }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    sym"@tag"               { fg=yellow, gui="bold" }, -- Tag
    sym"@tag.delimiter"     { fg=foreground }, -- Tag
    sym"@tag.attribute"     { fg=gray }, -- Tag

    -- typescript
    sym"@include.typescript"       { fg=yellow, gui="bold" }, -- Include

    -- latex
    sym"@namespace.latex"          { fg=yellow, gui="bold" }, -- Environment
    sym"@text.environment.latex"   { fg=yellow, gui="bold" }, -- Environment
    sym"@text.strong.latex"        { fg=foreground, gui="bold" },-- textbf
    sym"@text.emphasis.latex"      { fg=foreground, gui="italic" },-- textit
    sym"@function.latex"           { fg=yellow, gui="bold" }, -- Environment

    -- markdown-inline
    sym"@markup.italic.markdown_inline"   { gui="italic" },
    sym"@markup.strong.markdown_inline"   { gui="bold" },
    sym"@markup.link.label"               { fg=green, gui="underline" },
    sym"@markup.heading"                  { fg=blue },
    sym"@markup.list"                     { fg=gray },
    sym"@markup.raw"                      { fg=brown },

    sym"@label.markdown"                  { fg=brown },

    -- sym"@text.reference.markdown_inline"  { fg=blue },
    -- sym"@text.todo.unchecked.markdown"    { gui="regular"},
    -- sym"@text.literal.markdown_inline"    { fg=gray },
    sym"@punctuation.special.markdown"    { fg=gray },
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme
