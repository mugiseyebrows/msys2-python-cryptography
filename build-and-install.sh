#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
set -e
pacman -S --noconfirm --needed python python-setuptools binutils patch gcc
cd "$SCRIPT_DIR/python-ply"
makepkg --syncdeps --noconfirm
pacman -U --noconfirm python-ply-*.pkg.tar.zst
cd "$SCRIPT_DIR/python-pycparser"
makepkg --syncdeps --noconfirm
pacman -U --noconfirm python-pycparser-*.pkg.tar.zst
cd "$SCRIPT_DIR/python-cffi"
makepkg --syncdeps --noconfirm
pacman -U --noconfirm python-cffi-*.pkg.tar.zst
cd "$SCRIPT_DIR/python-idna"
makepkg --syncdeps --noconfirm
pacman -U --noconfirm python-idna-*.pkg.tar.zst
cd "$SCRIPT_DIR/python-cryptography"
makepkg --syncdeps --noconfirm --nocheck
pacman -U --noconfirm python-cryptography-*.pkg.tar.zst
cd "$SCRIPT_DIR"
set +e