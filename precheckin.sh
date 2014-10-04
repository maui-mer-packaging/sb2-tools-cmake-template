#!/bin/sh
ARCHS="armv7l armv7hl mipsel"

echo -n "arch i486 targets " > baselibs.conf
for x in $ARCHS; do
	cp -v sb2-tools-cmake-template-rpmlintrc sb2-tools-cmake-$x-rpmlintrc
	sed "s/@ARCH@/$x/g" sb2-tools-cmake-template.spec | sed "s/ExclusiveArch: nothing/ExclusiveArch: %{ix86}/g" > sb2-tools-cmake-$x.spec	
	echo -n "$x:inject " >> baselibs.conf
done
