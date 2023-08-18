#!/usr/bin/env zsh

set -o err_return
set -o no_unset
set -o pipefail

ZIG_SOURCES="/data/sources/zig"
INSTALL_PREFIX="$HOME/bin"

CWD=`pwd`

function cleanup {
	cd $CWD
	rm -rf "$ZIG_SOURCES/build"
}

trap cleanup EXIT

rm -rf "$ZIG_SOURCES/build"
mkdir "$ZIG_SOURCES/build" 

cd "$ZIG_SOURCES/build"

cmake .. -DZIG_STATIC_LLVM=ON -DCMAKE_PREFIX_PATH="/usr/local/llvm16;/usr/local" -DCMAKE_BUILD_TYPE=Release
make install

cp -R "$ZIG_SOURCES/build/stage3" "$INSTALL_PREFIX/"

cleanup
