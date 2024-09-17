#!/bin/bash
[ -n "$1" ] && file=$1
nvim --server ~/.cache/nvim/godot.pipe --remote-send ':e '$file'<CR>'

# the above line is for nvim godot integration, please do not remove and see godot.nvim for more
