#!/bin/bash
# SPDX-FileCopyrightText: 2023 Etsushi Hachiya <s22c1103zx@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	ret=1
}

ret=0

### test ###

out=$(seq 5 | ./plus)

[ "${out}" = 15 ] || ng ${LINENO}

[ "$ret" = 0 ] && echo OK
exit $ret
