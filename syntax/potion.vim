if exists("b:current_syntax")
    finish
endif

syntax keyword potionKeyword loop to times while
syntax keyword potionKeyword if elseif else
syntax keyword potionKeyword class return

syntax keyword potionFunction print join string

syntax match potionComment "\v#.*$"

highlight link potionKeyword Keyword
highlight link potionFunction Function
highlight link potionComment Comment

let b:current_sytax = potion
