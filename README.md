# robosys2023
このリポジトリは、未来ロボティクス学科で開講された講義内で制作しているものです。

# mkpass
![test](https://github.com/EtsushiHachiya/robosys2023/actions/workflows/test.yml/badge.svg)
標準入力から読み込んだアルファベットや数字から、日常で使うパスワードを作成することができます。

* char_to_num

標準入力からアルファベットを読み込み、入力した文字数と同じ桁数のパスワードを作成できます。

１．実行時に任意の数のアルファベットを標準入力として与える
```
python3 char_to_num m y z m
```
アルファベットは大文字でも大丈夫です。アルファベットの間には空白を一つ開けましょう。

２．与えられたアルファベットを数字化する
アルファベットは２６文字あるので、与えられたアルファベットが何番目の文字であるかを調べ、その１の位の数字に置き換えます。

ｍｙｚｍ　→　１３・２５・２６・１３　→　３５６３

３. 変換された数字が出力される
```
3 5 6 3
```

* plus_to_num

* minus_to_num

# plus
![test](https://github.com/EtsushiHachiya/robosys2023/actions/workflows/test.yml/badge.svg)
数を足します

# Usage


# Author
* Etsushi Hachiya 
* 
# License
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージは，aaa由来のコード（© 2022 Hoge Fuge）を利用しています．
* このパッケージの一部コードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    * [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2023 Etsushi Hachiya


