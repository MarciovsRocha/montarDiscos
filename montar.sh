#! /bin/bash

# verifica se o arquivo de utilidades existe antes de importar
if [ -f utils.sh ] then
    source utils.sh
else
    ./mensagens/pt-br/utils_nao_encontrado
    exit 1
fi

# verifica se o arquivo de configurções existe antes de importar
if [ -f config.cfg ] then
    source config.cgf
else
    ./mensagens/pt-br/config_nao_encontrado
    exit 1
fi

check_root

function helpFunction(){
    printf 
}

# Argumentos:
# -d especifica o Device a ser montado 

while getopts d:A: flag
do
    case "${flag}" in
        *) 
            ./$msgFolder/opcao_invalida
            exit 1
    esac
done
