let s:none = ['NONE', 'NONE']
let s:undercurl = 'undercurl,'
" setup palette dictionary
let s:gb = {}
let g:gruvbox_guisp_fallback='NONE'
let s:gb.faded_red      = ['#e06c75', 88]      " 157-0-6
let s:gb.faded_green    = ['#79740e', 100]     " 121-116-14
let s:gb.faded_yellow   = ['#e5c07b', 136]     " 181-118-20
let s:gb.faded_blue     = ['#076678', 24]      " 7-102-120
let s:gb.faded_purple   = ['#8f3f71', 96]      " 143-63-113
let s:gb.faded_aqua     = ['#427b58', 66]      " 66-123-88
let s:gb.faded_orange   = ['#af3a03', 130]     " 175-58-3
let s:red    = s:gb.faded_red
let s:green  = s:gb.faded_green
let s:yellow = s:gb.faded_yellow
let s:blue   = s:gb.faded_blue
let s:purple = s:gb.faded_purple
let s:aqua   = s:gb.faded_aqua
let s:orange = s:gb.faded_orange

function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  " foreground
  let fg = a:fg

  " background
  if a:0 >= 1
    let bg = a:1
  else
    let bg = s:none
  endif

  " emphasis
  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'NONE,'
  endif

  " special fallback
  if a:0 >= 3
    if g:gruvbox_guisp_fallback != 'NONE'
      let fg = a:3
    endif

    " bg fallback mode should invert higlighting
    if g:gruvbox_guisp_fallback == 'bg'
      let emstr .= 'inverse,'
    endif
  endif

  let histring = [ 'hi', a:group,
        \ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
        \ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
        \ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
        \ ]

  " special
  if a:0 >= 3
    call add(histring, 'guisp=' . a:3[0])
  endif

  execute join(histring, ' ')
endfunction

let s:gb.dark1       = ['#282c34', 235]     " 60-56-54
let s:bg1  = s:gb.dark1
let s:sign_column = s:bg1
let s:invert_signs = ''
call s:HL('GruvboxRedSign', s:red, s:sign_column, s:invert_signs)
call s:HL('GruvboxGreenSign', s:green, s:sign_column, s:invert_signs)
call s:HL('GruvboxYellowSign', s:yellow, s:sign_column, s:invert_signs)
call s:HL('GruvboxBlueSign', s:blue, s:sign_column, s:invert_signs)
call s:HL('GruvboxPurpleSign', s:purple, s:sign_column, s:invert_signs)
call s:HL('GruvboxAquaSign', s:aqua, s:sign_column, s:invert_signs)
call s:HL('ALEError', s:none, s:none, s:undercurl, s:red)
call s:HL('ALEWarning', s:none, s:none, s:undercurl, s:yellow)
call s:HL('ALEInfo', s:none, s:none, s:undercurl, s:blue)
hi! link ALEErrorSign GruvboxRedSign
hi! link ALEWarningSign GruvboxYellowSign
hi! link ALEInfoSign GruvboxBlueSign

function! s:getGruvColor(group)
  let guiColor = synIDattr(hlID(a:group), 'fg', 'gui')
  let termColor = synIDattr(hlID(a:group), 'fg', 'cterm')
  return [ guiColor, termColor ]
endfunction

let s:bg0  = s:getGruvColor('GruvboxBg0')
let s:bg1  = s:getGruvColor('GruvboxBg1')
let s:bg2  = s:getGruvColor('GruvboxBg2')
let s:bg4  = s:getGruvColor('GruvboxBg4')
let s:fg1  = s:getGruvColor('GruvboxFg1')
let s:fg4  = s:getGruvColor('GruvboxFg4')

let s:yellow = s:getGruvColor('GruvboxYellow')
let s:blue   = s:getGruvColor('GruvboxBlue')
let s:aqua   = s:getGruvColor('GruvboxAqua')
let s:orange = s:getGruvColor('GruvboxOrange')
let s:green = s:getGruvColor('GruvboxGreen')
let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}, 'terminal':{}}
let s:p.normal.error = [ [ s:bg0, s:orange ] ]
let s:p.normal.warning = [ [ s:bg2, s:yellow ] ]
let g:lightline#colorscheme#breezy#palette = lightline#colorscheme#flatten(s:p)

" Warning messages
hi! link WarningMsg GruvboxRedBold
