#!/bin/sh
zshrc() {
    echo "==========================================================="
    echo "                  Import zshrc                             "
    echo "-----------------------------------------------------------"
    cat .zshrc > $HOME/.zshrc
    cp .bash_aliases ~/.bash_aliases
    mkdir -p ~/.kube
    echo "$KUBECONFIG_NONPROD_NEW" > ~/.kube/config

    echo "$KUBECONFIG_PROD" > ~/.kube/prod-config
    KUBECONFIG=~/.kube/config:~/.kube/prod-config kubectl config view --flatten > /tmp/config
    mv /tmp/config ~/.kube/config
}

zshrc


