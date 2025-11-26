# bit syntax

https://www.erlang.org/doc/system/bit_syntax.html

## bit compiler

**Native code compilation of [[Erlang]]’s [[bit syntax]]**
[[Per Gustafsson]], [[Konstantinos Sagonas]]

https://user.it.uu.se/~kostis/Papers/matching_binaries.pdf

## [[Haskell]]

Bodigrim🇺🇦, [8/13/24 12:11 AM]
[[haskell/Vector Bit]] создает абстрацию работы с отдельными битами, хотя на самом деле все данные продолжают быть плотно упакованным блобом

слайсить можно, мутировать non-aligned фрагменты как попало

можно [[megaparsec]]'ом парсить (только инстанс [[haskell/Stream|Stream]] написать, но он тривиальный)

- https://t.me/haskellru/461645
	- [[haskell/TH]]
	- https://hackage.haskell.org/package/bitvec
		- https://hackage.haskell.org/package/bitvec-1.1.5.0/docs/Data-Bit.html#v:cloneFromByteString

- https://hackage.haskell.org/package/BitSyntax-0.3.2.2/docs/Data-BitSyntax.html

> [[Erlang/cross]]
