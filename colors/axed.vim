" console-buche/axed.vim
"
" A vim colorscheme that might not be for all's eyes. But it's mine. And my eyes love it.
" Feel free to use and adapt as you wish. Your eyes should love what they see. Make them happy.
"
" IMPORTANT: initially forked from awesome Alligator/accent.vim plugin
"
" Colors and their usage:
" - Wheat (#F5DEB3): Operators (keywords)
" - Teal (#5A727A): Default foreground text
" - Light Teal (#708585): Types
" - Light Green (#7FA377): Method calls
" - Soft Yellow (#D9B566): Constants (strings, numbers, enums)
" - Gray (#909090): Object keys and properties
" - Dark Gray (#4a4a4a): Inlay hints
" - Subtle Dark Gray (#202020): Cursor line
" - Medium Gray (#6A6A6A): Keywords

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'buche'

" Colors from the provided palette
let s:fg                = ' guifg=#5A727A ctermfg=252'     " Default foreground (teal)
let s:fg_bright_white   = ' guifg=#e0e0e0 ctermfg=255'     " Bright white
let s:fg_dim_white      = ' guifg=#909090 ctermfg=246'     " Dim white
let s:fg_light_green    = ' guifg=#7FA377 ctermfg=220'     " Light green for method calls
let s:fg_medium_gray    = ' guifg=#6A6A6A ctermfg=54'      " Medium gray for keywords
let s:fg_soft_yellow    = ' guifg=#D9B566 ctermfg=221'     " Soft yellow for constants
let s:fg_gray           = ' guifg=#909090 ctermfg=145'     " Gray for object keys and properties
let s:fg_light_teal     = ' guifg=#708585 ctermfg=238'     " Light teal for types
let s:fg_dark_gray      = ' guifg=#4a4a4a ctermfg=238'     " Dark gray for inlay hints
let s:fg_operator       = ' guifg=#F5DEB3 ctermfg=54'      " Wheat for operators (keywords)
let s:bg_none           = ' guibg=NONE'                    " Transparent background
let s:bg_cursorline     = ' guibg=#202020'                 " Subtle dark gray for cursor line
let s:bg_search         = ' guibg=#404040'                 " Background for search matches
let s:bg_incsearch      = ' guibg=#606060'                 " Background for incremental search match
let s:fg_incsearch      = ' guifg=#ffcc00'                 " Foreground for incremental search match

" Special colors
let s:sp_red      = ' guisp=#d06a75 ctermfg=167'
let s:sp_magenta  = ' guisp=#b86b8e ctermfg=176'
let s:sp_blue     = ' guisp=#4E78A2 ctermfg=74'
let s:sp_cyan     = ' guisp=#4E8A92 ctermfg=73'

" Modifiers
let s:bold        = ' gui=bold'
let s:none        = ' gui=none cterm=none'
let s:underline   = ' gui=underline'
let s:undercurl   = ' gui=undercurl'

" General highlight groups
execute 'hi Normal' . s:fg . s:bg_none
execute 'hi StatusLine' . s:fg . s:bg_none . s:none
execute 'hi StatusLineNC' . s:fg_dim_white . s:bg_none . s:none
execute 'hi VertSplit' . s:fg . s:bg_none . s:none
execute 'hi LineNr' . s:fg_dim_white . s:bg_none . s:none
execute 'hi CursorLineNr' . s:fg_bright_white . s:bg_none . s:none
execute 'hi CursorLine' . s:bg_cursorline . s:none
execute 'hi MatchParen' . s:fg_bright_white . s:bg_none . s:bold
execute 'hi NonText' . s:fg_dim_white . s:bg_none . s:none
execute 'hi WildMenu' . s:fg . s:bg_none . s:none
execute 'hi Search' . s:fg_bright_white . s:bg_search . s:none
execute 'hi IncSearch' . s:fg_incsearch . s:bg_incsearch . s:bold
execute 'hi Folded' . s:fg_bright_white . s:bg_none . s:none
execute 'hi Pmenu' . s:fg_dim_white . s:bg_none . s:none
execute 'hi PmenuSel' . s:fg . s:bg_none . s:none
execute 'hi TabLine' . s:fg_dim_white . s:bg_none . s:none
execute 'hi TabLineFill' . s:fg_dim_white . s:bg_none . s:none

" Linking related highlight groups
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link MoreMsg Question
hi! link FoldColumn Folded

" Spellchecking highlight groups
execute 'hi SpellBad' . ' ctermbg=NONE' . s:undercurl . s:sp_red
execute 'hi SpellRare' . ' ctermbg=NONE' . s:undercurl . s:sp_magenta
execute 'hi SpellCap' . ' ctermbg=NONE' . s:undercurl . s:sp_blue
execute 'hi SpellLocal' . ' ctermbg=NONE' . s:undercurl . s:sp_cyan

" Syntax highlight groups
execute 'hi Comment' . s:fg_dim_white . s:bg_none . s:none
execute 'hi String' . s:fg_soft_yellow . s:bg_none . s:none
execute 'hi Number' . s:fg_soft_yellow . s:bg_none . s:none
execute 'hi Type' . s:fg_light_teal . s:bg_none . s:none
execute 'hi PreProc' . s:fg_dim_white . s:bg_none . s:none
execute 'hi Underlined' . s:fg . s:bg_none . s:underline
execute 'hi Special' . s:fg_dim_white . s:bg_none . s:none
execute 'hi Error' . s:fg_bright_white . s:bg_none . s:none

execute 'hi Keyword' . s:fg_medium_gray . s:bg_none . s:none
execute 'hi Constant' . s:fg_soft_yellow . s:bg_none . s:none
execute 'hi Function' . s:fg_light_green . s:bg_none . s:none
execute 'hi Identifier' . s:fg_gray . s:bg_none . s:none
execute 'hi Operator' . s:fg_operator . s:bg_none . s:none

execute 'hi LspInlayHint' . s:fg_dark_gray . s:bg_none . s:none

" Linking syntax highlight groups
hi! link Todo Normal
hi! link Macro PreProc
hi! link Statement Type
hi! link Constant Constant
hi! link SpecialKey Comment
hi! link Title Type
hi! link Directory Type
hi! link Function Function
hi! link Number Number
hi! link Character String
hi! link ErrorMsg Error

" Special stuff
hi! link xmlAttrib Normal
hi! link sqlKeyword Type

" Diff highlight groups
let s:diff_red    = ' guifg=#d06a75 guibg=NONE gui=NONE ctermfg=167 ctermbg=NONE'
let s:diff_green  = ' guifg=#7EA07A guibg=NONE ctermfg=149 ctermbg=NONE'
let s:diff_purple = ' guifg=#a06a8e guibg=NONE ctermfg=176 ctermbg=NONE'

execute 'hi DiffAdd' . s:diff_green
execute 'hi DiffDelete' . s:diff_red
execute 'hi DiffChange' . s:bg_none
execute 'hi DiffText' . s:fg_bright_white . s:bg_none . s:none

" Linking diff highlight groups
hi! link diffAdded DiffAdd
hi! link diffRemoved DiffDelete
