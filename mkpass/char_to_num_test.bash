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
out=$(python3 char_to_num a b c d)
[ "${out}" = "1 2 3 4  " ] || ng ${LINENO}

# STRANGE INPUT
out=$(python3 char_to_num 1 2 3 4)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "1 2 3 4  " ] || ng ${LINENO}


[ "$res" = 0 ] && echo OK

exit $res
