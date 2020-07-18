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
endfor

syntax sync fromstart

let b:current_syntax = "vue"
