" Nisha.vim -- Vim color scheme.
" Author:      Aniket Bhattacharyea (aniketmail669@gmail.com)
" Webpage:     https://github.com/heraldofsolace/Nisha-Colorscheme
" Description: Calm as night
" Last Change: 2020-10-25

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "nisha"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    hi Normal ctermbg=16 ctermfg=231 cterm=NONE guibg=#191a21 guifg=#efe6dd gui=NONE
    hi NonText ctermbg=NONE ctermfg=102 cterm=NONE guibg=NONE guifg=#767b8b gui=NONE
    hi Character ctermbg=NONE ctermfg=138 cterm=NONE guibg=NONE guifg=#ea93c2 gui=NONE
    hi Comment ctermbg=NONE ctermfg=102 cterm=italic guibg=NONE guifg=#767b8b gui=italic
    hi Constant ctermbg=NONE ctermfg=139 cterm=NONE guibg=NONE guifg=#a27fc2 gui=NONE
    hi Error ctermbg=NONE ctermfg=203 cterm=NONE guibg=NONE guifg=#f14358 gui=NONE
    hi Function ctermbg=NONE ctermfg=72 cterm=NONE guibg=NONE guifg=#6bc29a gui=NONE
    hi Identifier ctermbg=NONE ctermfg=138 cterm=NONE guibg=NONE guifg=#ea93c2 gui=NONE
    hi Ignore ctermbg=NONE ctermfg=231 cterm=NONE guibg=NONE guifg=#efe6dd gui=NONE
    hi PreProc ctermbg=NONE ctermfg=209 cterm=NONE guibg=NONE guifg=#dd816a gui=NONE
    hi Special ctermbg=NONE ctermfg=209 cterm=NONE guibg=NONE guifg=#dd816a gui=NONE
    hi Statement ctermbg=NONE ctermfg=209 cterm=NONE guibg=NONE guifg=#dd816a gui=NONE
    hi String ctermbg=NONE ctermfg=144 cterm=NONE guibg=NONE guifg=#e8c19b gui=NONE
    hi Todo ctermbg=139 ctermfg=231 cterm=NONE guibg=#a27fc2 guifg=#efe6dd gui=NONE
    hi Type ctermbg=NONE ctermfg=109 cterm=italic guibg=NONE guifg=#99b7c2 gui=italic
    hi Underlined ctermbg=NONE ctermfg=109 cterm=underline guibg=NONE guifg=#99b7c2 gui=underline
    hi StatusLine ctermbg=NONE ctermfg=209 cterm=NONE guibg=NONE guifg=#dd816a gui=NONE
    hi StatusLineNC ctermbg=NONE ctermfg=139 cterm=NONE guibg=NONE guifg=#a27fc2 gui=NONE
    hi VertSplit ctermbg=NONE ctermfg=59 cterm=NONE guibg=NONE guifg=#373a42 gui=NONE
    hi TabLine ctermbg=102 ctermfg=16 cterm=NONE guibg=#767b8b guifg=#191a21 gui=NONE
    hi TabLineFill ctermbg=NONE ctermfg=16 cterm=NONE guibg=NONE guifg=#191a21 gui=NONE
    hi TabLineSel ctermbg=NONE ctermfg=72 cterm=NONE guibg=NONE guifg=#6bc29a gui=NONE
    hi Title ctermbg=NONE ctermfg=72 cterm=NONE guibg=NONE guifg=#6bc29a gui=NONE
    hi CursorLine ctermbg=59 ctermfg=NONE cterm=NONE guibg=#373a42 guifg=NONE gui=NONE
    hi LineNr ctermbg=NONE ctermfg=102 cterm=NONE guibg=NONE guifg=#767b8b gui=NONE
    hi CursorLineNr ctermbg=59 ctermfg=139 cterm=NONE guibg=#373a42 guifg=#a27fc2 gui=NONE
    hi helpLeadBlank ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi helpNormal ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi Visual ctermbg=59 ctermfg=231 cterm=NONE guibg=#373a42 guifg=#efe6dd gui=NONE
    hi VisualNOS ctermbg=59 ctermfg=102 cterm=NONE guibg=#373a42 guifg=#767b8b gui=NONE
    hi Pmenu ctermbg=234 ctermfg=231 cterm=NONE guibg=#262626 guifg=#efe6dd gui=NONE
    hi PmenuSbar ctermbg=234 ctermfg=231 cterm=NONE guibg=#262626 guifg=#efe6dd gui=NONE
    hi PmenuSel ctermbg=59 ctermfg=231 cterm=NONE guibg=#373a42 guifg=#efe6dd gui=NONE
    hi PmenuThumb ctermbg=234 ctermfg=59 cterm=NONE guibg=#262626 guifg=#373a42 gui=NONE
    hi FoldColumn ctermbg=234 ctermfg=102 cterm=NONE guibg=#262626 guifg=#767b8b gui=NONE
    hi Folded ctermbg=234 ctermfg=102 cterm=NONE guibg=#262626 guifg=#767b8b gui=NONE
    hi WildMenu ctermbg=NONE ctermfg=139 cterm=NONE guibg=NONE guifg=#a27fc2 gui=NONE
    hi SpecialKey ctermbg=NONE ctermfg=102 cterm=NONE guibg=NONE guifg=#767b8b gui=NONE
    hi DiffAdd ctermbg=NONE ctermfg=72 cterm=NONE guibg=NONE guifg=#6bc29a gui=NONE
    hi DiffChange ctermbg=NONE ctermfg=209 cterm=NONE guibg=NONE guifg=#dd816a gui=NONE
    hi DiffDelete ctermbg=NONE ctermfg=203 cterm=NONE guibg=NONE guifg=#f14358 gui=NONE
    hi DiffText ctermbg=144 ctermfg=16 cterm=NONE guibg=#e8c19b guifg=#191a21 gui=NONE
    hi IncSearch ctermbg=209 ctermfg=16 cterm=NONE guibg=#dd816a guifg=#191a21 gui=NONE
    hi Search ctermbg=72 ctermfg=16 cterm=NONE guibg=#6bc29a guifg=#191a21 gui=NONE
    hi Directory ctermbg=NONE ctermfg=138 cterm=NONE guibg=NONE guifg=#ea93c2 gui=NONE
    hi MatchParen ctermbg=NONE ctermfg=72 cterm=NONE guibg=NONE guifg=#6bc29a gui=NONE
    hi SpellBad ctermbg=NONE ctermfg=203 cterm=undercurl guibg=NONE guifg=#f14358 gui=undercurl guisp=#f14358
    hi SpellCap ctermbg=NONE ctermfg=203 cterm=NONE guibg=NONE guifg=#f14358 gui=NONE guisp=#99b7c2
    hi SpellLocal ctermbg=NONE ctermfg=203 cterm=NONE guibg=NONE guifg=#f14358 gui=NONE guisp=#f14358
    hi SpellRare ctermbg=NONE ctermfg=203 cterm=NONE guibg=NONE guifg=#f14358 gui=NONE guisp=#99b7c2
    hi ColorColumn ctermbg=59 ctermfg=203 cterm=NONE guibg=#373a42 guifg=#f14358 gui=NONE
    hi SignColumn ctermbg=NONE ctermfg=209 cterm=NONE guibg=NONE guifg=#dd816a gui=NONE
    hi ErrorMsg ctermbg=203 ctermfg=231 cterm=bold guibg=#f14358 guifg=#efe6dd gui=bold
    hi ModeMsg ctermbg=NONE ctermfg=72 cterm=bold guibg=NONE guifg=#6bc29a gui=bold
    hi MoreMsg ctermbg=NONE ctermfg=72 cterm=bold guibg=NONE guifg=#6bc29a gui=bold
    hi Question ctermbg=NONE ctermfg=72 cterm=bold guibg=NONE guifg=#6bc29a gui=bold
    hi WarningMsg ctermbg=209 ctermfg=16 cterm=bold guibg=#dd816a guifg=#191a21 gui=bold
    hi Cursor ctermbg=NONE ctermfg=231 cterm=NONE guibg=NONE guifg=#efe6dd gui=NONE
    hi CursorColumn ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi QuickFixLine ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Tag ctermbg=NONE ctermfg=109 cterm=NONE guibg=NONE guifg=#99b7c2 gui=NONE
    hi Delimiter ctermbg=NONE ctermfg=109 cterm=NONE guibg=NONE guifg=#99b7c2 gui=NONE
    hi SpecialComment ctermbg=NONE ctermfg=72 cterm=NONE guibg=NONE guifg=#6bc29a gui=NONE
    hi Conceal ctermbg=NONE ctermfg=139 cterm=NONE guibg=NONE guifg=#a27fc2 gui=NONE
    hi ToolbarLine ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi ToolbarButton ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi debugPC ctermbg=109 ctermfg=231 cterm=NONE guibg=#99b7c2 guifg=#efe6dd gui=NONE
    hi debugBreakpoint ctermbg=203 ctermfg=231 cterm=NONE guibg=#f14358 guifg=#efe6dd gui=NONE

elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16

    hi Normal ctermbg=NONE ctermfg=NONE cterm=NONE
    hi NonText ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Character ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Comment ctermbg=NONE ctermfg=NONE cterm=italic
    hi Constant ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Error ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Function ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Identifier ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE
    hi PreProc ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Special ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Statement ctermbg=NONE ctermfg=NONE cterm=NONE
    hi String ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Todo ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Type ctermbg=NONE ctermfg=NONE cterm=italic
    hi Underlined ctermbg=NONE ctermfg=NONE cterm=underline
    hi StatusLine ctermbg=NONE ctermfg=NONE cterm=NONE
    hi StatusLineNC ctermbg=NONE ctermfg=NONE cterm=NONE
    hi VertSplit ctermbg=NONE ctermfg=NONE cterm=NONE
    hi TabLine ctermbg=NONE ctermfg=NONE cterm=NONE
    hi TabLineFill ctermbg=NONE ctermfg=NONE cterm=NONE
    hi TabLineSel ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Title ctermbg=NONE ctermfg=NONE cterm=NONE
    hi CursorLine ctermbg=NONE ctermfg=NONE cterm=NONE
    hi LineNr ctermbg=NONE ctermfg=NONE cterm=NONE
    hi CursorLineNr ctermbg=NONE ctermfg=NONE cterm=NONE
    hi helpLeadBlank ctermbg=NONE ctermfg=NONE cterm=NONE
    hi helpNormal ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Visual ctermbg=NONE ctermfg=NONE cterm=NONE
    hi VisualNOS ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Pmenu ctermbg=NONE ctermfg=NONE cterm=NONE
    hi PmenuSbar ctermbg=NONE ctermfg=NONE cterm=NONE
    hi PmenuSel ctermbg=NONE ctermfg=NONE cterm=NONE
    hi PmenuThumb ctermbg=NONE ctermfg=NONE cterm=NONE
    hi FoldColumn ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Folded ctermbg=NONE ctermfg=NONE cterm=NONE
    hi WildMenu ctermbg=NONE ctermfg=NONE cterm=NONE
    hi SpecialKey ctermbg=NONE ctermfg=NONE cterm=NONE
    hi DiffAdd ctermbg=NONE ctermfg=NONE cterm=NONE
    hi DiffChange ctermbg=NONE ctermfg=NONE cterm=NONE
    hi DiffDelete ctermbg=NONE ctermfg=NONE cterm=NONE
    hi DiffText ctermbg=NONE ctermfg=NONE cterm=NONE
    hi IncSearch ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Search ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Directory ctermbg=NONE ctermfg=NONE cterm=NONE
    hi MatchParen ctermbg=NONE ctermfg=NONE cterm=NONE
    hi SpellBad ctermbg=NONE ctermfg=NONE cterm=undercurl
    hi SpellCap ctermbg=NONE ctermfg=NONE cterm=NONE
    hi SpellLocal ctermbg=NONE ctermfg=NONE cterm=NONE
    hi SpellRare ctermbg=NONE ctermfg=NONE cterm=NONE
    hi ColorColumn ctermbg=NONE ctermfg=NONE cterm=NONE
    hi SignColumn ctermbg=NONE ctermfg=NONE cterm=NONE
    hi ErrorMsg ctermbg=NONE ctermfg=NONE cterm=bold
    hi ModeMsg ctermbg=NONE ctermfg=NONE cterm=bold
    hi MoreMsg ctermbg=NONE ctermfg=NONE cterm=bold
    hi Question ctermbg=NONE ctermfg=NONE cterm=bold
    hi WarningMsg ctermbg=NONE ctermfg=NONE cterm=bold
    hi Cursor ctermbg=NONE ctermfg=NONE cterm=NONE
    hi CursorColumn ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi QuickFixLine ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Tag ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Delimiter ctermbg=NONE ctermfg=NONE cterm=NONE
    hi SpecialComment ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Conceal ctermbg=NONE ctermfg=NONE cterm=NONE
    hi ToolbarLine ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi ToolbarButton ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi debugPC ctermbg=NONE ctermfg=NONE cterm=NONE
    hi debugBreakpoint ctermbg=NONE ctermfg=NONE cterm=NONE
endif

hi link EndOfBuffer NonText
hi link Number Constant
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC
hi link CursorIM Cursor
hi link Terminal Normal

let g:terminal_ansi_colors = [
        \ '#191a21',
        \ '#ef233c',
        \ '#307555',
        \ '#bf9f82',
        \ '#5e3c7d',
        \ '#cc80a8',
        \ '#4f7684',
        \ '#efe6dd',
        \ '#767b8b',
        \ '#f14358',
        \ '#6bc29a',
        \ '#e8c19b',
        \ '#a27fc2',
        \ '#ea93c2',
        \ '#99b7c2',
        \ '#ffffff',
        \ ]
if has('nvim')
      let g:terminal_color_0 = '#191a21'
      let g:terminal_color_1 = '#ef233c'
      let g:terminal_color_2 = '#307555'
      let g:terminal_color_3 = '#bf9f82'
      let g:terminal_color_4 = '#5e3c7d'
      let g:terminal_color_5 = '#cc80a8'
      let g:terminal_color_6 = '#4f7684'
      let g:terminal_color_7 = '#efe6dd'
      let g:terminal_color_8 = '#767b8b'
      let g:terminal_color_9 = '#f14358'
      let g:terminal_color_10 = '#6bc29a'
      let g:terminal_color_11 = '#e8c19b'
      let g:terminal_color_12 = '#a27fc2'
      let g:terminal_color_13 = '#ea93c2'
      let g:terminal_color_14 = '#99b7c2'
      let g:terminal_color_15 = '#ffffff'
  endif

" Generated with RNB (https://github.com/romainl/vim-rnb)
