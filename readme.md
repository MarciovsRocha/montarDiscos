# Montar Discos

*Comando customizado com base no comando `mount` do unix.*

    by: dev.marcio.rocha@gmail.com
    date: 02/2022

## Instalação

Está disponível um arquivo de instalação `install.sh`, que irá instalar as dependências e configurar o comando de acordo com as variáveis e caminhos no arquivo `config.cfg` (Para mais detalhes sobre o arquivo leia a sessão seguinte). Caso queira uma instalação customizada altere as variáveis de instalação do arquivo de configurações ou instale manualmente.

## Arquivo de Configuração

O arquivo `./config.cfg` possui algumas variáveis/configurações/verificações utilizadas como configuração de inicialização.

### Limitação ao usuário root

Para limitar este comando somente para o usuário root acesse o arquivo de configurações altere o valor da variável `ROOT` para `true`.

### USER

A variável `USER` contém um valor simbólico para identificação de caminhos e arquivos gerados pelo comando. Altere para um nome de identificação sua preferência.

### DEF_DIR

A variável `DEF_DIR` contém o local padrão de montagem dos discos, caso deseje que os discos montados por este comando estejam em um local diferente, altere o valor desta variável para um de sua preferência.

### LANGUAGE

A variável `LAGUAGE` representa a codificação do idioma das mensagems a serem exibidas. Verifique a sessão de *Mensagens Padronizadas* para idiomas estão disponíveis.

## Mensagens Padronizadas

A pasta `mensagens` contém as mensagens padronizadas e formatadas utilizadas por este comando.

### Idiomas disponíveis

Altere a variável `LANGUAGE` no arquivo de configurações para definir o idioma das mensagens exibidas.

Ob.: *As mensagens padrões são exibidas em Português-BR*

Alterar a parte abaixo para uma tabela

*[codificação] - idioma (país)*

* `[pt-br]` Português (Brazil) *Disponível*
* `[en-us]` Inglês (USA) *Em desenvolvimento...*
* `[es-es]` Español (ES) *Não disponível*
