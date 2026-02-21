#! /bin/bash

# setup multilib
grep -q '^\[multilib\]' /etc/pacman.conf || printf '%s\n%s\n' '[multilib]' 'Include = /etc/pacman.d/mirrorlist' >> /etc/pacman.conf

# setup chaotic-aur
grep -q '^\[chaotic-aur\]' /etc/pacman.conf || pacman-key --init
grep -q '^\[chaotic-aur\]' /etc/pacman.conf || pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
grep -q '^\[chaotic-aur\]' /etc/pacman.conf || pacman-key --lsign-key 3056513887B78AEB
grep -q '^\[chaotic-aur\]' /etc/pacman.conf || pacman -U --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
grep -q '^\[chaotic-aur\]' /etc/pacman.conf || pacman -U --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
grep -q '^\[chaotic-aur\]' /etc/pacman.conf || printf '%s\n%s\n' '[chaotic-aur]' 'Include = /etc/pacman.d/chaotic-mirrorlist' >> /etc/pacman.conf
pacman -Syu --noconfirm chaotic-keyring

# setup cachyos-repo
rm -rf /tmp/cachyos-repo.tar.xz
rm -rf /tmp/cachyos-repo/
grep -q '^\[cachyos\]' /etc/pacman.conf || curl https://mirror.cachyos.org/cachyos-repo.tar.xz -o /tmp/cachyos-repo.tar.xz
grep -q '^\[cachyos\]' /etc/pacman.conf || tar xvf /tmp/cachyos-repo.tar.xz -C /tmp
grep -q '^\[cachyos\]' /etc/pacman.conf || cd /tmp/cachyos-repo/
grep -q '^\[cachyos\]' /etc/pacman.conf || /tmp/cachyos-repo/cachyos-repo.sh
rm -rf /tmp/cachyos-repo.tar.xz
rm -rf /tmp/cachyos-repo/

pacman -Syu --noconfirm
