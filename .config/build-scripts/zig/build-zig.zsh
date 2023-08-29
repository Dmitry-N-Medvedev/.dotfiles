#!/usr/bin/env zsh

set -o err_return
set -o no_unset
set -o pipefail

SOURCES="/data/sources/zig"
INSTALL_PREFIX="$HOME/bin"

function cleanup {
	rm -rf $SOURCES/build > /dev/null 2>&1
}

trap cleanup EXIT

cd $SOURCES \
	&& rm -rf ./build > /dev/null 2>&1 \
	&& git pull \
	&& mkdir build \
	&& cd build \
	&& cmake .. -DZIG_STATIC_LLVM=ON -DCMAKE_PREFIX_PATH="/usr/local/llvm16;/usr/local" -DCMAKE_BUILD_TYPE=Release \
	&& make install \
	&& cp -Rfp $SOURCES/build/stage3 $INSTALL_PREFIX
