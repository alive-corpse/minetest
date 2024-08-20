#!/bin/sh
#
# Init script for minetest server by Evgeniy Shumilov <eashumilov@ya.ru> <evgeniy.shumilov@gmail.com>
#

src=/usr/share/minetest
dst=/opt/minetest


[ -z "$1" ] && echo "Port is empty" && exit 1
[ -z "$2" ] && echo "GameID is empty" && exit 2
[ -z "$3" ] && echo "WorldName is empty" && exit 3


[ ! -d "$dst" ] && echo "ERROR: Directory "$src" does not exists, it should be mapped" >&2 && exit 4

if [ ! -L "$src" ]; then
    echo "First start detected"
    echo "Moving data to /opt/minetest..."
    [ ! -d "$dst/games" ] && [ -d "$src/games" ] && mv "$src/games" "$dst/"
    [ ! -d "$dst/worlds" ] && [ -d "$src/worlds" ] && mv "$src/worlds" "$dst/"
    [ ! -d "$dst/builtin" ] && [ -d "$src/builtin" ] && mv "$src/builtin" "$dst/"
    rm -rf "$src"
    ln -s "$dst" "$src"
fi

cd "/usr/share/minetest/worlds"

minetestserver --port "$1" --gameid "$2" --world "$3"

