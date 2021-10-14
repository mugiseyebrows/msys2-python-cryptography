#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "$SCRIPT_DIR/python-ply"
makepkg --syncdeps --noconfirm
pacman -U --noconfirm python-ply-3.11-1-x86_64.pkg.tar.zst
cd "$SCRIPT_DIR/python-pycparser"
makepkg --syncdeps --noconfirm
pacman -U --noconfirm python-pycparser-2.20-1-x86_64.pkg.tar.zst
cd "$SCRIPT_DIR/python-cffi"
makepkg --syncdeps --noconfirm
pacman -U --noconfirm python-cffi-1.14.5-1-x86_64.pkg.tar.zst
cd "$SCRIPT_DIR/python-idna"
makepkg --syncdeps --noconfirm
pacman -U --noconfirm python-idna-3.2-1-x86_64.pkg.tar.zst
cd "$SCRIPT_DIR/python-cryptography"
makepkg --nocheck --syncdeps --noconfirm
pacman -U --noconfirm python-cryptography-3.4.7-1-x86_64.pkg.tar.zst
cd "$SCRIPT_DIR"