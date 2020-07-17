let g:airline#themes#nisha#palette = {}

let s:airline_a_normal = [ '#191a21', '#ff7d55', 16, 139 ]
let s:airline_b_normal = [ '#191a21', '#99b7c2', 231, 109 ]
let s:airline_c_normal = [ '#efe6dd', '#373a42', 231, 16 ]
let g:airline#themes#nisha#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)

let g:airline#themes#nisha#palette.normal_modified = {
    \ 'airline_c': [ '#efe6dd', '#191a21', 231, 59, ''],
  \ }

let s:airline_a_insert = [ '#191a21', '#6bc29a', 231, 72 ]
let s:airline_b_insert = [ '#191a21', '#99b7c2', 231, 109 ]
let s:airline_c_insert = [ '#efe6dd', '#373a42', 231, 16 ]

let g:airline#themes#nisha#palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)

let g:airline#themes#nisha#palette.insert_modified = {
    \ 'airline_c': [ '#efe6dd', '#191a21', 231, 59, ''],
  \ }

let g:airline#themes#nisha#palette.insert_paste = {
    \ 'airline_c': [ '#efe6dd', '#ff7d55', 231, 59, ''],
  \ }

let s:airline_a_replace = [ '#191a21', '#f14358', 16, 203 ]

let g:airline#themes#nisha#palette.replace = airline#themes#generate_color_map(s:airline_a_replace, s:airline_b_insert, s:airline_c_insert)

let g:airline#themes#nisha#palette.replace_modified = g:airline#themes#nisha#palette.insert_modified

let s:airline_a_visual = [ '#191a21' , '#ab797a' , 16 , 138 ]

let g:airline#themes#nisha#palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_normal, s:airline_c_normal)
let g:airline#themes#nisha#palette.visual_modified = g:airline#themes#nisha#palette.normal_modified

let s:airline_a_inactive = [ '#efe6dd' , '#191a21' , 231 , 59  ]
let g:airline#themes#nisha#palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_a_inactive, s:airline_a_inactive)

let g:airline#themes#nisha#palette.commandline = airline#themes#nisha#palette.normal
