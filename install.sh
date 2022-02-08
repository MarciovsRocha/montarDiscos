#! /bin/bash

# importação do arquivo de configurações
# altere o conteúdo desta variável caso tenha alterado 
# o caminho e/ou o nome do arquivo
cfg=zconfig.cfg
if [ -f $cfg ] then 
    source $cfg
else 
    printf "\nArquivo de configurações \"%s\" não encontrado." "$cfg"
    exit 1 
fi

# importação do arquivo de mensagens
# altere o conteúdo desta variável caso tenha alterado 
# o caminho e/ou o nome do arquivo
msg=mensagens
if [ -f $msg ] then
    source $msg
else 
    echo "Arquivo com mensagens padrões não encontrado."
fi

# este script realizará a instalação e configuração do comando 
# em seu computador. Verifique o arquivo "config.cfg" para validar
# as configurações de instalação. Altere as congigurações para 
# sua preferência

# criação de pastas padrões 

create_folders(){
    if ! [ -d $tmp_dir/mainFolder ] then
        mkdir $tmp_dir/mainFolder 
    else 
        printf "Pasta de instalação já existente"
    fi
}



