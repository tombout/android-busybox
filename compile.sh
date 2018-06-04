#!/usr/bin/env bash

set -e

cd "${0%/*}"

VERSION="1.28.4"

test -f busybox-${VERSION}.tar.bz2 || wget http://busybox.net/downloads/busybox-${VERSION}.tar.bz2
rm -rf busybox-${VERSION}
tar xvf busybox-${VERSION}.tar.bz2
cd busybox-${VERSION}

make android_ndk_defconfig

sed -i 's/CONFIG_SYSROOT=".*"/CONFIG_SYSROOT="${NDK_TOOLCHAIN}\/sysroot"/' .config
sed -i 's/# CONFIG_STATIC is not set/CONFIG_STATIC=y/' .config

make
