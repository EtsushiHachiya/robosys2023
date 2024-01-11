#!/bin/bash

# SPDX-FileCopyrightText: 2023 Etsushi Hachiya <s22c1103zx@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo NG at Line $1
      res=1
}

res=0

# plus_to_num TEST
#I/O TEST
out=$(python3 mkpass/plus_to_num 1 2 0 4)
[ "${out}" = "[8, 9, 7, 1]" ] || ng ${LINENO}

out=$(python3 mkpass/plus_to_num P h u b)
[ "${out}" = 数字を入力してください ] || ng ${LINENO} #文字

out=$(python3 mkpass/plus_to_num { h : %)
[ "${out}" = 数字を入力してください ] || ng ${LINENO} #その他記号

out=$(python3 mkpass/plus_to_num 1204)
[ "${out}" = "[1201]"] || ng ${LINENO} #空白無し 1204+7-10=1201

out=$(python3 mkpass/plus_to_num Phub)
[ "${out}" = 数字を入力してください ] || ng ${LINENO}

out=$(python3 mkpass/plus_to_num {h:%)
[ "${out}" = 数字を入力してください ] || ng ${LINENO}

out=$(python3 mkpass/plus_to_num)
[ "${out}" = "[]" ] || ng ${LINENO} #空文字

[ "$res" = 0 ] && echo OK

exit $res
