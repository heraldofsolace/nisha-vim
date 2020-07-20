" Nisha: Dark colorscheme for Vim
" Copyright (C) 2020  Aniket Bhattacharyea
"
" This program is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.
"
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with this program.  If not, see <https://www.gnu.org/licenses/>.

if exists("b:current_syntax")
  finish
endif

runtime! syntax/html.vim
syntax clear htmlTagName
syntax match htmlTagName contained "\<[a-zA-Z0-9:-]*\>"
unlet! b:current_syntax

syn region  vueSurroundingTag   contained start=+<\(script\|style\|template\)+ end=+>+ fold contains=htmlTagN,htmlString,htmlArg,htmlValue,htmlTagError,htmlEvent
syn keyword htmlSpecialTagName  contained template
syn keyword htmlArg             contained scoped ts
syn match   htmlArg "[@v:][-:.0-9_a-z]*\>" contained

function! s:attr(name, value)
  return a:name . '=\("\|''\)[^\1]*' . a:value . '[^\1]*\1'
endfunction

function! s:is_language_present(lang)
    if empty(globpath(&runtimepath, 'syntax/' . a:lang . '.vim'))
        return 0
    endif
    return 1
endfunction


let s:languages = [
            \ {'name': 'less',       'in': 'style'},
            \ {'name': 'pug',        'in': 'template', 'pattern': s:attr('lang', '\%(pug\|jade\)')},
            \ {'name': 'haml',       'in': 'template'},
            \ {'name': 'typescript', 'in': 'script', 'pattern': '\%(lang=\("\|''\)[^\1]*\(ts\|typescript\)[^\1]*\1\|ts\)'},
            \ {'name': 'coffee',     'in': 'script'},
            \ {'name': 'stylus',     'in': 'style'},
            \ {'name': 'sass',       'in': 'style'},
            \ {'name': 'scss',       'in': 'style'},
            \ ]

for s:language in s:languages
    if s:is_language_present(s:language.name)
        let s:attr_pattern = has_key(s:language, 'pattern') ? s:language.pattern : s:attr('lang', s:language.name)
        let s:start_pattern = '<' . s:language.in . '\>\_[^>]*' . s:attr_pattern . '\_[^>]*>'


        execute 'syntax include @' . s:language.name . ' syntax/' . s:language.name . '.vim'
        unlet! b:current_syntax
        execute 'syntax region vue_' . s:language.name
                \ 'keepend'
                \ 'start=/' . s:start_pattern . '/'
                \ 'end="</' . s:language.in . '>"me=s-1'
                \ 'contains=@' . s:language.name . ',vueSurroundingTag'
                \ 'fold'
    endif
endfor

syntax sync fromstart

let b:current_syntax = "vue"
