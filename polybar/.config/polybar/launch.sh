#!/usr/bin/env sh

pkill polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar top &

