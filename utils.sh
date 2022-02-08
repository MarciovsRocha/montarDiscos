#! /bin/bash

# importação do arquivo de configurações
if [ -f ./config.cfg ]
then 
    source ./config.cfg
else 
    ./mensagens/pt-br/config_nao_encontrado
    exit 1 
fi

# função para verificar se o comando está sendo executado com 
# privilégio
function check_root(){
    if [[ $EUID -ne 0 ]]; then
        echo "This script must be run as root."
        exit 1
    fi
}

# funcao para verificar se o diretório existe
# retorna 0 caso o diretorio exista
# retorna 1 caso o diretorio não exista
function check_dir(){
    [ -d "$1" ] && return 0 || return 1
}

# funcao para verificar se o arquivo em questão existe
# retorna 0 caso o arquivo exista
# retorna 1 caso o arquivo não exista
function check_file(){
    [ -f "$1" ] && return 0 || return 1
}
