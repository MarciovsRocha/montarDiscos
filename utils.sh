#! /bin/bash

# importação do arquivo de configurações
if [ -f ./config.cfg ]
then 
    # shellcheck source=/dev/null
    source ./config.cfg
else 
    ./mensagens/pt-br/config_nao_encontrado
    exit 1 
fi

# TODO -c CheckRoot -t ARRUMAR
# função para verificar se o comando está sendo executado por
# usuário root
#function check_root(){
#    if [ [ $EUID -ne 0 ] && ROOT ]; then
#        echo "This script must be run as root."
#        exit 1
#    fi
#}

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

# TODO -c "Extrair dados de objeto JSON" -t TERMINAR
# funcao para extrair as variaveis passadas por parametro 
# do objeto json
function extrair_json(){
    tags=()
    for tag in "$@"; do
        tags+=("$tag")
    done
}

# TODO -c "Blockdevices como JSON" -t TESTAR
# retorna uma string com objetos JSON
# referentes aos blockdevices
function blockdevices_json(){
    return "$(lsblk -J)"
}

# TODO -c "Listar Blockdevices" -t TERMINAR
# funcao para listar todos os devices aliases disponíveis 
# indicando quais ja estao montados
function listar_blockdevices(){
    jsonList=$(jq -r '.blockdevices' <<< devices_as_json)
    for data in $jsonList; do
        echo "$data"
    done
}
