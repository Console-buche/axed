" console-buche/axed.vim
"
" A vim colorscheme that might not be for all's eyes. But it's mine. And my eyes love it.
" Feel free to use and adapt as you wish. Your eyes should love what they see. Make them happy.
"
" IMPORTANT: initially forked from awesome Alligator/accent.vim plugin
"

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'axed'

" Colors from the provided palette
let s:fg                = ' guifg=#CCCCCC ctermfg=252'     " Default foreground 
let s:fg_none           = ' guifg=NONE ctermfg=NONE'
let s:fg_bright_white   = ' guifg=#E0E0E0 ctermfg=255'
let s:fg_dim_white      = ' guifg=#909090 ctermfg=246'
let s:fg_light_yellow   = ' guifg=#AAAAAA ctermfg=220'     " method calls
let s:fg_medium_gray    = ' guifg=#F4C430 ctermfg=246'     " keywords
let s:fg_soft_yellow    = ' guifg=#EADDCA ctermfg=221'     " constants
let s:fg_gray           = ' guifg=#4A4A4A ctermfg=145'     " keys and properties
let s:fg_wheat          = ' guifg=#D8D1B7 ctermfg=238'     " types
let s:fg_dark_gray      = ' guifg=#737373 ctermfg=238'     " inlay hints
let s:fg_operator       = ' guifg=#4A4A4A ctermfg=54'      " operators 
let s:bg_none           = ' guibg=NONE'                    " Transparent background
let s:bg_cursorline     = ' guibg=#202020'                 " cursor line
let s:bg_search         = ' guibg=#303030'                 " search matches
let s:bg_incsearch      = ' guibg=#404040'                 " incremental search match
let s:fg_incsearch      = ' guifg=#CCCC33'                 " incremental search match

" Special colors
let s:sp_red            = ' guisp=#D06A75 ctermfg=167'
let s:sp_magenta        = ' guisp=#B86B8E ctermfg=176'
let s:sp_cyan           = ' guisp=#4E8A92 ctermfg=73'

" Modifiers
let s:bold              = ' gui=bold'
let s:none              = ' gui=none cterm=none'
let s:underline         = ' gui=underline'
let s:undercurl         = ' gui=undercurl'

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
execute 'hi SpellCap' . ' ctermbg=NONE' . s:undercurl . s:sp_cyan
execute 'hi SpellLocal' . ' ctermbg=NONE' . s:undercurl . s:sp_cyan

" Syntax highlight groups
execute 'hi Comment' . s:fg_dim_white . s:bg_none . s:none
execute 'hi String' . s:fg_soft_yellow . s:bg_none . s:none
execute 'hi Number' . s:fg_soft_yellow . s:bg_none . s:none
execute 'hi Type' . s:fg_wheat . s:bg_none . s:none 
execute 'hi PreProc' . s:fg_dim_white . s:bg_none . s:none
execute 'hi Underlined' . s:fg . s:bg_none . s:underline
execute 'hi Special' . s:fg_dim_white . s:bg_none . s:none
execute 'hi Error' . s:fg_bright_white . s:bg_none . s:none

execute 'hi Keyword' . s:fg_medium_gray . s:bg_none . s:none
execute 'hi Constant' . s:fg_soft_yellow . s:bg_none . s:none
execute 'hi Function' . s:fg_light_yellow . s:bg_none . s:none
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
let s:diff_red    = ' guifg=#D06A75 guibg=NONE gui=NONE ctermfg=167 ctermbg=NONE'
let s:diff_green  = ' guifg=#7EA07A guibg=NONE ctermfg=149 ctermbg=NONE'
let s:diff_purple = ' guifg=#A06A8E guibg=NONE ctermfg=176 ctermbg=NONE'

execute 'hi DiffAdd' . s:diff_green
execute 'hi DiffDelete' . s:diff_red
execute 'hi DiffChange' . s:bg_none
execute 'hi DiffText' . s:fg_bright_white . s:bg_none . s:none

" Linking diff highlight groups
hi! link diffAdded DiffAdd
hi! link diffRemoved DiffDelete

" Cursor highlight groups
execute 'hi Cursor guifg=NONE guibg=#FFFF00'
execute 'hi lCursor guifg=NONE guibg=#FFFF00'
execute 'hi CursorInsert guifg=NONE guibg=#FF5733'
execute 'hi lCursorInsert guifg=NONE guibg=#FF5733'
