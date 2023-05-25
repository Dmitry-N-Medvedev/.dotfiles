#!/usr/bin/env zsh

function run {
	if ! pgrep -f $1 ;
	then
		$@&
	fi
}

run picom --config=$HOME/.config/picom/picom.conf

