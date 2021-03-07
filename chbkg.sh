#!/bin/sh
cd ~
BACKGROUND="$(ls .backgrounds | shuf -n 1)"
while :
do
 feh --image-bg \#01070a --bg-max ".backgrounds/${BACKGROUND}"
 sleep 1m
 BACKGROUND="$(ls .backgrounds | grep -v "${BACKGROUND}" | shuf -n 1)"
done
