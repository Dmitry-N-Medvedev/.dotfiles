#!/usr/bin/env zsh

SOURCES="/data/sources/zls"
INSTALL_PREFIX="$HOME/dmitry/bin/stage3"

cd $SOURCES \
	&& rm -rf ./zig-out \
	&& git pull \
	&& zig build -Doptimize=ReleaseSafe \
	&& cp -fv ./zig-out/bin/zls $INSTALL_PREFIX/bin/zls \
	&& rm -rf ./zig-out

