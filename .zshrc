# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

ZSH_THEME="cloud"

plugins=(git docker docker-compose kubectl terraform)

source $ZSH/oh-my-zsh.sh
#
alias ku=kubectl
alias kz='kubectl kustomize'
alias tf=terraform
alias lc=linode-cli
alias changens='kubectl config set-context --current --namespace '
alias argocdpass='kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d'

export KUBECONFIG=~/.kube/config
