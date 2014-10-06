#!/bin/sh
ARCHS="armv6l armv7l armv7hl armv7tnhl mipsel"

for x in $ARCHS; do
    basename=sb2-tools-cmake-${x}-1.0
    if [ ! -f $basename.tar.bz2 ]; then
        mkdir $basename
        touch $basename/.donttouch
        tar -cjf $basename.tar.bz2 $basename
        rm -rf $basename
    fi
done
