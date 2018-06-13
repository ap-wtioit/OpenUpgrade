#!/usr/bin/env bash
cd $(dirname $0)
checksum=0
while true; do
    if [ "$(ls -al source | sha1sum)" != "$checksum" ] ; then
        make html
        checksum=$(ls -al source | sha1sum)
    else
        sleep 1
    fi
done