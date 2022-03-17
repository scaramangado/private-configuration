set noshowmode

let s:black = [ '#2b2b2b', 235 ]
let s:gray = [ '#323232', 236 ]
let s:white = [ '#a9b7c6', 250 ]
let s:blue = [ '#6897bb' , 67 ] 
let s:green = [ '#629755', 71 ] 
let s:purple = [ '#9876aa', 104 ]
let s:red = [ '#ff6b68', 204 ]
let s:yellow = [ '#bbb529', 222 ]
let s:orange = [ '#cc7832', 255 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:black, s:orange ], [ s:orange, s:gray ] ]
let s:p.normal.right = [ [ s:black, s:orange ], [ s:orange, s:gray ] ]
let s:p.inactive.left =  [ [ s:black, s:blue ], [ s:blue, s:gray ] ]
let s:p.inactive.right = [ [ s:black, s:blue ], [ s:blue, s:gray ] ]
let s:p.insert.left = [ [ s:black, s:green ], [ s:green, s:gray ] ] 
let s:p.insert.right = [ [ s:black, s:green ], [ s:green, s:gray ] ]
let s:p.replace.left = [ [ s:black, s:red ], [ s:red, s:gray ] ]
let s:p.replace.right = [ [ s:black, s:red ], [ s:red, s:gray ] ]
let s:p.visual.left = [ [ s:black, s:blue ], [ s:blue, s:gray ] ]
let s:p.visual.right = [ [ s:black, s:blue ], [ s:blue, s:gray ] ]
let s:p.normal.middle = [ [ s:white, s:gray ] ]
let s:p.inactive.middle = [ [ s:white, s:gray ] ]
let s:p.tabline.left = [ [ s:blue, s:gray ] ]
let s:p.tabline.tabsel = [ [ s:black, s:blue ] ]
let s:p.tabline.middle = [ [ s:blue, s:gray ] ]
let s:p.tabline.right = [ [ s:black, s:blue ] ]
let s:p.normal.error = [ [ s:red, s:black ] ]
let s:p.normal.warning = [ [ s:yellow, s:black ] ]

let g:lightline#colorscheme#darcula_idea#palette = lightline#colorscheme#flatten(s:p)

let g:lightline = {
      \ 'colorscheme': 'darcula_idea',
      \ }

