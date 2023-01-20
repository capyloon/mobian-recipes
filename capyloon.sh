#!/bin/bash

set -e

OPT=
DEVICE=pinephonepro

while [[ $# -gt 0 ]]; do
    case "$1" in
    --installer)
        OPT="$OPT -o"
        ;;
    --librem5)
        DEVICE=librem5
        ;;
    esac
    shift
done

echo "About to run: './build.sh ${OPT} -e capyloon -t ${DEVICE} -s'"
time ./build.sh ${OPT} -e capyloon -t ${DEVICE} -s 2>&1|tee capyloon.log
