#!/usr/bin/env bash

set -euo pipefail

script_dir="$(cd "$(dirname "$0")" && pwd)"
src_dir="$(cd $script_dir; cd "../src" && pwd)"

function install {
    src="$1"
    dst="$2"

    if [ ! -f "$src" ] && [ ! -d "$src" ]; then
        echo "Source $src does not exist"
        return
    fi

    echo "Creating symlink to $src at $dst"

    # ln source_file target_file
    # -i: Cause ln to write a prompt to stderr if the target file exists.
    # -h: If the target file or target dir is a symbolic link, do not follow it.
    # -s: Create a symbolic link.
    ln -ihs "$src" "$dst"
}

install $src_dir/bash_profile     $HOME/.bash_profile
install $src_dir/bashrc           $HOME/.bashrc
install $src_dir/gitconfig        $HOME/.gitconfig
install $src_dir/inputrc          $HOME/.inputrc
install $src_dir/vimrc            $HOME/.vimrc
install $src_dir/vim              $HOME/.vim

