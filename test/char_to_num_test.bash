#!/bin/bash

# SPDX-FileCopyrightText: 2023 Etsushi Hachiya <s22c1103zx@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo NG at Line $1
      res=1
}

res=0

# char_to_num TEST
# I/O TEST
out=$(python3 ~/robosys/mkpass/char_to_num a b c d)
[ "${out}" = "1 2 3 4  " ] || ng ${LINENO}

# STRANGE INPUT
out=$(python3 ~/robosys/mkpass/char_to_num a ~ c ¥) #記号
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "1 " ] || ng ${LINENO} #記号が読み込まれた箇所でキーエラー

out=$(python3 ~/robosys/mkpass/char_to_num 1 2 3 4) #数字
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "1 2 3 4  " ] || ng ${LINENO}


out=$(python3 ~/robosys/mkpass/char_to_num abcd) #空白無し
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(python3 ~/robosys/mkpass/char_to_num 1234)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(python3 ~/robosys/mkpass/char_to_num) #空文字
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}


[ "$res" = 0 ] && echo OK

exit $res
