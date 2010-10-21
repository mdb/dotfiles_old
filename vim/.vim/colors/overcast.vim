" Vim color file
" Converted from Textmate theme Overcast using Coloration v0.2.4 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Overcast"

hi Cursor  guifg=NONE guibg=#ff0000 gui=NONE
hi Visual  guifg=NONE guibg=#9ea4a9 gui=NONE
hi CursorLine  guifg=NONE guibg=#949494 gui=NONE
hi CursorColumn  guifg=NONE guibg=#949494 gui=NONE
hi LineNr  guifg=#404040 guibg=#808080 gui=NONE
hi VertSplit  guifg=#686868 guibg=#686868 gui=NONE
hi MatchParen  guifg=#eeab8a guibg=NONE gui=NONE
hi StatusLine  guifg=#000000 guibg=#686868 gui=bold
hi StatusLineNC  guifg=#000000 guibg=#686868 gui=NONE
hi Pmenu  guifg=#83cbed guibg=NONE gui=NONE
hi PmenuSel  guifg=NONE guibg=#9ea4a9 gui=NONE
hi IncSearch  guifg=NONE guibg=#989a8d gui=NONE
hi Search  guifg=NONE guibg=#989a8d gui=NONE
hi Directory  guifg=#a0cbe1 guibg=NONE gui=NONE
hi Folded  guifg=#7d4081 guibg=#808080 gui=NONE

hi Normal  guifg=#000000 guibg=#808080 gui=NONE
hi Boolean  guifg=#a0cbe1 guibg=NONE gui=NONE
hi Character  guifg=#a0cbe1 guibg=NONE gui=NONE
hi Comment  guifg=#7d4081 guibg=NONE gui=italic
hi Conditional  guifg=#eeab8a guibg=NONE gui=NONE
hi Constant  guifg=#a0cbe1 guibg=NONE gui=NONE
hi Define  guifg=#eeab8a guibg=NONE gui=NONE
hi ErrorMsg  guifg=NONE guibg=NONE gui=NONE
hi WarningMsg  guifg=NONE guibg=NONE gui=NONE
hi Float  guifg=#a0cbe1 guibg=NONE gui=NONE
hi Function  guifg=#83cbed guibg=NONE gui=NONE
hi Identifier  guifg=#d3e8d1 guibg=NONE gui=NONE
hi Keyword  guifg=#eeab8a guibg=NONE gui=NONE
hi Label  guifg=#90ff5e guibg=NONE gui=NONE
hi NonText  guifg=#9ca5af guibg=#949494 gui=NONE
hi Number  guifg=#a0cbe1 guibg=NONE gui=NONE
hi Operator  guifg=#eeab8a guibg=NONE gui=NONE
hi PreProc  guifg=#eeab8a guibg=NONE gui=NONE
hi Special  guifg=#000000 guibg=NONE gui=NONE
hi SpecialKey  guifg=#9ca5af guibg=#949494 gui=NONE
hi Statement  guifg=#eeab8a guibg=NONE gui=NONE
hi StorageClass  guifg=#d3e8d1 guibg=NONE gui=NONE
hi String  guifg=#90ff5e guibg=NONE gui=NONE
hi Tag  guifg=#83cbed guibg=NONE gui=NONE
hi Title  guifg=#000000 guibg=NONE gui=bold
hi Todo  guifg=#7d4081 guibg=NONE gui=inverse,bold,italic
hi Type  guifg=#83cbed guibg=NONE gui=NONE
hi Underlined  guifg=NONE guibg=NONE gui=underline
hi rubyClass  guifg=#eeab8a guibg=NONE gui=NONE
hi rubyFunction  guifg=#83cbed guibg=NONE gui=NONE
hi rubyInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE
hi rubySymbol  guifg=#a0cbe1 guibg=NONE gui=NONE
hi rubyConstant  guifg=#00ffbc guibg=NONE gui=NONE
hi rubyStringDelimiter  guifg=#90ff5e guibg=NONE gui=NONE
hi rubyBlockParameter  guifg=#c8cfa6 guibg=NONE gui=NONE
hi rubyInstanceVariable  guifg=#c8cfa6 guibg=NONE gui=NONE
hi rubyInclude  guifg=#eeab8a guibg=NONE gui=NONE
hi rubyGlobalVariable  guifg=#c8cfa6 guibg=NONE gui=NONE
hi rubyRegexp  guifg=#e9c062 guibg=NONE gui=NONE
hi rubyRegexpDelimiter  guifg=#e9c062 guibg=NONE gui=NONE
hi rubyEscape  guifg=#a0cbe1 guibg=NONE gui=NONE
hi rubyControl  guifg=#eeab8a guibg=NONE gui=NONE
hi rubyClassVariable  guifg=#c8cfa6 guibg=NONE gui=NONE
hi rubyOperator  guifg=#eeab8a guibg=NONE gui=NONE
hi rubyException  guifg=#eeab8a guibg=NONE gui=NONE
hi rubyPseudoVariable  guifg=#c8cfa6 guibg=NONE gui=NONE
hi rubyRailsUserClass  guifg=#00ffbc guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod  guifg=#f1c3e6 guibg=NONE gui=NONE
hi rubyRailsARMethod  guifg=#f1c3e6 guibg=NONE gui=NONE
hi rubyRailsRenderMethod  guifg=#f1c3e6 guibg=NONE gui=NONE
hi rubyRailsMethod  guifg=#f1c3e6 guibg=NONE gui=NONE
hi erubyDelimiter  guifg=NONE guibg=NONE gui=NONE
hi erubyComment  guifg=#7d4081 guibg=NONE gui=italic
hi erubyRailsMethod  guifg=#f1c3e6 guibg=NONE gui=NONE
hi htmlTag  guifg=#89bdff guibg=NONE gui=NONE
hi htmlEndTag  guifg=#89bdff guibg=NONE gui=NONE
hi htmlTagName  guifg=#89bdff guibg=NONE gui=NONE
hi htmlArg  guifg=#89bdff guibg=NONE gui=NONE
hi htmlSpecialChar  guifg=#a0cbe1 guibg=NONE gui=NONE
hi javaScriptFunction  guifg=#d3e8d1 guibg=NONE gui=NONE
hi javaScriptRailsFunction  guifg=#f1c3e6 guibg=NONE gui=NONE
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE
hi yamlKey  guifg=#83cbed guibg=NONE gui=NONE
hi yamlAnchor  guifg=#c8cfa6 guibg=NONE gui=NONE
hi yamlAlias  guifg=#c8cfa6 guibg=NONE gui=NONE
hi yamlDocumentHeader  guifg=#90ff5e guibg=NONE gui=NONE
hi cssURL  guifg=#c8cfa6 guibg=NONE gui=NONE
hi cssFunctionName  guifg=#f1c3e6 guibg=NONE gui=NONE
hi cssColor  guifg=#a0cbe1 guibg=NONE gui=NONE
hi cssPseudoClassId  guifg=#83cbed guibg=NONE gui=NONE
hi cssClassName  guifg=#83cbed guibg=NONE gui=NONE
hi cssValueLength  guifg=#a0cbe1 guibg=NONE gui=NONE
hi cssCommonAttr  guifg=#ededa3 guibg=NONE gui=NONE
hi cssBraces  guifg=NONE guibg=NONE gui=NONE
