#!/bin/bash


ng () {
	echo ${1}行目が違うよ
	ret=1
}

ret=0
a=unchi
[ "$a" = unko ] || ng "$LINENO"
[ "$a" = unchi ] || ng "$LINENO"

exit ${ret}

