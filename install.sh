#!/bin/sh
zshrc() {
    echo "==========================================================="
    echo "                  Import zshrc                             "
    echo "-----------------------------------------------------------"
    cat .zshrc > $HOME/.zshrc
}

zshrc

cp .bash_aliases ~/.bash_aliases
mkdir ~/.kube
echo "$KUBECONFIG_NONPROD_NEW" > ~/.kube/config
