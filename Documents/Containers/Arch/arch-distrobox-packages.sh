#! /bin/bash
pacman -Su --noconfirm --needed wl-clipboard paru nano
paru -Su --noconfirm --needed --skipreview gtk-nocsd-git rmtrash

paru -Su --noconfirm --needed --skipreview octopi aria2 rsync bat grc highlight zsync ripgrep ripgrep-all erdtree bottom
paru -Su --noconfirm --needed --skipreview firefox google-chrome microsoft-edge-stable-bin vivaldi vivaldi-ffmpeg-codecs
paru -Su --noconfirm --needed --skipreview kate konsole kdeconnect kontrast arianna
paru -Su --noconfirm --needed --skipreview bottles faugus-launcher cachyos-gaming-meta
paru -Su --noconfirm --needed --skipreview grsync android-tools git-delta grex czkawka-gui
paru -Su --noconfirm --needed --skipreview gallery-dl media-downloader masterpdfeditor-free

# AUR specific apps
paru -Su --noconfirm --needed --skipreview whitesur-gtk-theme whitesur-icon-theme whitesur-kde-theme
paru -Su --noconfirm --needed --skipreview proton-authenticator-bin proton-pass-bin
paru -Su --noconfirm --needed --skipreview mangal-bin mov-cli mangayomi-linux adbtuifm
paru -Su --noconfirm --needed --skipreview grayjay-bin edconv-bin soundkonverter-qt6-git
paru -Su --noconfirm --needed --skipreview onthespot-appimage soundbound-app-bin spotiflyer-bin
