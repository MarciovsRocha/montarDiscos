#! /bin/bash

LANGUAGE=$1
NAME=$2
PRINT_TYPE=$3

if [ -z "$LANGUAGE" ] || [ -z "$NAME" ] || [ -z "$PRINT_TYPE" ] then
    echo "Passe a codificação da mensagem customizada e o nome do arquivo."
    exit 1    
fi

IFS= read -r -p "Digite o texto com formatação da mensagem customizada" msg

case $PRINT_TYPE in
    e) 
        echo "echo $msg" >> mensagens/$LANGUAGE/$NAME
        ;;
    p) 
        echo "printf $msg" >> mensagens/$LANGUAGE/$NAME
        ;;
    *) 
        echo "PRINT_TYPE não compatível, insira 'e' para ECHO ou 'p' para PRINTF."
        exit 1
        ;;
esac
echo "mensagem criada com sucesso em: mensagens/$LANGUAGE/$NAME"
