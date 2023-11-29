#!/bin/bash

# SPDX-FileCopyrightText: 2023 Etsushi Hachiya <s22c1103zx@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo NG at Line $1
      res=1
}

res=0

# plus_to_num TEST
out=$(python3 plus_to_num 1 2 0 4)
[ "${out}" = "[8, 9, 7, 1]" ] || ng ${LINENO}

out=$(python3 plus_to_num P h u b)
[ "${out}" = 数字を入力してください ] || ng ${LINENO} #引数を文字に

out=$(python3 plus_to_num { h : %)
[ "${out}" = 数字を入力してください ] || ng ${LINENO} #その他記号

out=$(python3 plus_to_num)
[ "${out}" = "[]" ] || ng ${LINENO} #引数無し

[ "$res" = 0 ] && echo OK

exit $res
