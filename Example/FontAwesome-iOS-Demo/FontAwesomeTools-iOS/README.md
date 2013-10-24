# FontAwesomeTools-iOS

## simpler fontawesome implementation for iOS

There are already a couple FontAwesome libraries for iOS, here is why I decided to make this one:

## Goals:
1. Easy upgradability and simpler implementation. No decoupling of the icon name and the unicode value -- I decided to define macros vs. create an enum lookup. The macro header file is a format that can be upgraded instantly with a short script written for a new css file, minimum thought and time required.
2. Prefer a naming system as similar as possible to the original FontAwesome CSS. For example, the icon title for 'fa-glass' becomes 'fa_glass', since dashes are disallowed in c macro names.
3. Reduced Complexity. I thought I could improve on the available designs, and I think I've done so with the core FontAwesome.m at just 60 LOC.

## Shameles Plug:
I built this for inclusion in my app design templates available at (TapTemplate)[www.taptemplate.com]