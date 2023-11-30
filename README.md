# robosys2023
このリポジトリは、未来ロボティクス学科で開講された講義内で制作しているものです。

# Install
```
$ git clone -b main https://github.com/EtsushiHachiya/robosys2023
$ cd robosys2023
```

# Usage

## mkpass

![test](https://github.com/EtsushiHachiya/robosys2023/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだアルファベットや数字から、日常で使うパスワードを作成することができます。
```
$ cd mkpass
```

* アルファベットからパスワードを作成
```
$ python3 char_to_num m y z m #文字の間に空白を一つ空ける
$ 3 5 6 3
```

* 数字からパスワードを作成・その１
```
$ python3 plus_to_num 1 2 0 4 #文字の間に空白を一つ空ける
$ [8, 9, 7, 1]
```

* 数字からパスワードを作成・その２
```
$ python3 minus_to_num 1 2 0 4 #文字の間に空白を一つ空ける
$ [6, 5, 7, 3]
```

## plus
![test](https://github.com/EtsushiHachiya/robosys2023/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだ数字を足します。
```
$ seq 5 | ./plus
$ 15
```

#For Technical users

どういう仕組みでパスワードを作っているの？って人向けです。

## char_to_num

１．実行時に任意の数のアルファベットが標準入力として与えられる
```
python3 char_to_num m y z m
```

２．与えられたアルファベットを数字化する
アルファベットは２６文字あるので、与えられたアルファベットが何番目の文字であるかを調べ、その１の位の数字に置き換えます。

ｍｙｚｍ　＝＞　１３・２５・２６・１３　＝＞　３５６３

３. 変換された数字が出力される
```
3 5 6 3
```

## plus_to_num

標準入力で読み込んだ数字に７を足して、入力した文字数と同じ桁数（１０桁以下）のパスワードを作成します。

１．実行時に任意の数の数字が標準入力として与えられる
```
python3 plus_to_num 1 2 0 4
```
数字の間には空白を一つ空けましょう。

２．与えられた数字から別の数列を作成する
与えられた数字に足し算をして、その数字をパスワードとします。合計が１０以上になった場合は１の位を当てはめます。

１２０４　＝＞　８・９・７・１１　＝＞　８９７１

３．変換された数字が出力される
```
[8, 9, 7, 1]
```

４．標準入力に数字以外が入力された場合

以下のようなメッセージが出力されます。
```
数字を入力してください
```

## minus_to_num

標準入力で読み込んだ数字から７を引いて、入力した文字数と同じ桁数（１０桁以下）のパスワードを作成します。

１．実行時に任意の数の数字が標準入力として与えられる
```
python3 minus_to_num 1 2 0 4
```

２．与えられた数字から別の数列を作成する
与えられた数字に引き算をして、その数字をパスワードとします。合計がマイナスになった場合はマイナス符号を無視して当てはめます。

１２０４　＝＞　−６・−５・−７・−３　＝＞　６５７３

３．変換された数字が出力される
```
[6, 5, 7, 3]
```

４．標準入力に数字以外が入力された場合

以下のようなメッセージが出力されます。
```
数字を入力してください
```

# plus

標準入力から読み込んだ数字を足します。

１．実行時の標準入力に任意の数字を与える
```
seq 5 | ./plus
```


２．数字が足されて出力される
```
15
```

# Author
* Etsushi Hachiya 
* s22c1103zx@s.chibakoudai.jp

# LICENSE
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージの一部コードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    * [ryuichiueda/my_slides/robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2023 Etsushi Hachiya
