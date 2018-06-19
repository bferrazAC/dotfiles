#!/bin/bash

source common/functions.sh

# Create your here: http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20
msg ' __    __    __  __        _____     ______    ______   ______   __     __         ______     ______    '
msg '/\ "-./  \  /\ \_\ \      /\  __-.  /\  __ \  /\__  _\ /\  ___\ /\ \   /\ \       /\  ___\   /\  ___\   '
msg '\ \ \-./\ \ \ \____ \     \ \ \/\ \ \ \ \/\ \ \/_/\ \/ \ \  __\ \ \ \  \ \ \____  \ \  __\   \ \___  \  '
msg ' \ \_\ \ \_\ \/\_____\     \ \____-  \ \_____\   \ \_\  \ \_\    \ \_\  \ \_____\  \ \_____\  \/\_____\ '
msg '  \/_/  \/_/  \/_____/      \/____/   \/_____/    \/_/   \/_/     \/_/   \/_____/   \/_____/   \/_____/ '
msg '                                                                                                        '

OSX=$(test "`uname`" == "Darwin" && echo "x")

if [[ -d "$HOME/Projetos/dotfiles" ]]; then
    msg_checking "Checking dotfiles directory"
else
    msg_install "Cloning" "git@github.com:kenjiyamamoto/dotfiles.git"
    git clone git@github.com:kenjiyamamoto/dotfiles.git $HOME/Projetos/dotfiles
    msg_ok "OK"
fi

sh brew/global.sh
sh node/global.sh
sh bpkg/global.sh
sh sublime/global.sh
sh common/dotfiles.sh