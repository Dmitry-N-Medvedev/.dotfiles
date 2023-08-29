#!/usr/bin/env zsh

# ln GENERIC-NETGRAPH to /usr/src/sys/amd64/conf/GENERIC-NETGRAPH

cd /usr/src \
	&& doas make buildkernel KERNCONF=GENERIC-NETGRAPH \
	&& doas make installkernel KERNCONF=GENERIC-NETGRAPH

