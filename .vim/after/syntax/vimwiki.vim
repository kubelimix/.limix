"========================================================================
"# LIMIX_24OS version 0.0.1 
"#
"# 2013-10-20
"========================================================================
" Defining a syntax
" -----------------------------------------------------------------------
" keyword match region
" When multiple Match or Region items start in the same position, the item
"   defined last has priority.
" A Keyword has priority over Match and Region items.
" An item that starts in an earlier position has priority over items that
"   start in later positions.
"========================================================================
:syntax keyword LIMIX_KEY LIMIX_TODO LIMIX_IMPROVE LIMIX_CARE
"LIMIX_DELAY LIMIX_DONE LIMIX_TOSTD LIMIX_STD
:hi LIMIX_KEY  gui=bold guifg=green
