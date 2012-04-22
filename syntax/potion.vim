if exists("b:current_syntax")
    finish
endif

syntax keyword potionKeyword loop to times while
syntax keyword potionKeyword if elseif else
syntax keyword potionKeyword class return

syntax keyword potionFunction print join string

syntax match potionComment "\v#.*$"

syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="
syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\="

syntax match potionNumber "\v[0-9]+.[0-9]e(\+\-)?[0-9]+"
syntax match potionNumber "\v[0-9]+.[0-9]+"
syntax match potionNumber "\v[0-9]e(\-\+)?[0-9]+"
syntax match potionNumber "\v[0-9]+"
syntax match potionNumber "\v0x([0-9][a-f])+"

syntax region potionString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region potionString start=/\v'/ skip=/\v\\./ end=/\v'/

highlight link potionKeyword Keyword
highlight link potionFunction Function
highlight link potionComment Comment
highlight link potionOperator Operator
highlight link potionNumber Number
highlight link potionString String

let b:current_sytax = "potion"
