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

# verifica se está sendo executado por usuário root
check_root

# help function
function helpFunction(){
    echo ""
}

# Argumentos:
# -d especifica o Device a ser montado 
# -h Mostra o menu de ajuda
# -l lista os Devices atuais
while getopts d:A: flag
do
    case "${flag}" in
        l) 
            list_devices
            exit 0
            ;;
        h)
            helpFunction
            exit 0
            ;;
        *) 
            ./$msgFolder/opcao_invalida
            exit 1
            ;;
    esac
done
