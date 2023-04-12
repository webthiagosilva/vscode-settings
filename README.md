# Configurações do Visual Studio Code para Desenvolvimento PHP, HTML, CSS e JavaScript

Este repositório contém configurações otimizadas do Visual Studio Code para desenvolvimento web com PHP, HTML, CSS e JavaScript. Estas configurações são baseadas em boas práticas e padrões da indústria para fornecer um ambiente de desenvolvimento eficiente e produtivo.

## Índice

- [Instalação](#instalação)
- [Configurações do Visual Studio Code](#configurações-do-visual-studio-code)
  - [Geral](#geral)
  - [Editor](#editor)
  - [Explorer](#explorer)
  - [Arquivos](#arquivos)
  - [Pesquisa](#pesquisa)
  - [Segurança](#segurança)
  - [Intelephense](#intelephense)
  - [PHP](#php)
  - [Shell](#shell)
  - [JSON](#json)
  - [HTML](#html)
  - [CSS](#css)
  - [JavaScript](#javascript)
  - [Emmet](#emmet)
  - [GitHub Copilot](#github-copilot)
- [Extensões Recomendadas](#extensões-recomendadas)
- [Arquivo launch.json para depuração de PHP com Docker e Xdebug 3](#arquivo-launchjson)

## Instalação

Para utilizar estas configurações, siga os passos abaixo:

1. Clone este repositório ou copie o conteúdo do arquivo `settings.json` deste repositório.
2. Abra o Visual Studio Code e vá em "File > Preferences > Settings".
3. Cole o conteúdo do arquivo `settings.json` na janela de configurações do usuário (ou do espaço de trabalho, se preferir).
4. Instale as extensões recomendadas mencionadas na seção [Extensões Recomendadas](#extensões-recomendadas)

## Configurações do Visual Studio Code

A seguir, apresentamos as principais configurações incluídas neste repositório:

### Geral
Configurações gerais, como zoom, tema e editor de inicialização.

### Editor
Configurações relacionadas ao editor de texto, como tamanho da fonte, espaçamento entre linhas, estilo do cursor e formatação.

### Explorer
Configurações relacionadas ao explorador de arquivos, como confirmação de arrastar e soltar, exclusão e compactação de pastas.

### Arquivos
Configurações relacionadas aos arquivos, como codificação de caracteres, inserção de nova linha no final e remoção de espaços em branco.

### Pesquisa
Configurações relacionadas à pesquisa, como colapsar resultados e exclusões de pesquisa.

### Segurança
Configurações relacionadas à segurança, como confiança no espaço de trabalho.

### Intelephense
Configurações relacionadas ao Intelephense, uma extensão para melhorar a inteligência do código PHP.

### PHP
Configurações relacionadas aos arquivos PHP, como formatador padrão.

### Shell
Configurações relacionadas a scripts de shell, como inserção de espaços, uso de guias e sugestões baseadas em palavras.

### JSON
Configurações relacionadas aos arquivos JSON, como o formatador padrão.

### HTML
Configurações relacionadas aos arquivos HTML, como a formatação de atributos e sugestões de HTML5.

### CSS
Configurações relacionadas aos arquivos CSS, como a integração de folhas de estilo externas e o suporte a diferentes linguagens.

### JavaScript
Configurações relacionadas aos arquivos JavaScript, como formatação de funções e blocos de controle e preferências de importação de módulos.

### Emmet
Configurações relacionadas ao Emmet, uma ferramenta para geração rápida de código HTML e CSS com abreviações.

### GitHub Copilot

Configurações relacionadas ao GitHub Copilot, uma IA assistente de programação que ajuda a sugerir trechos de código.

## Extensões Recomendadas
Recomendamos a instalação das seguintes extensões para melhorar sua experiência de desenvolvimento:

- [Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [HTML CSS Support](https://marketplace.visualstudio.com/items?itemName=ecmel.vscode-html-css)
- [JavaScript (ES6) Code Snippets](https://marketplace.visualstudio.com/items?itemName=xabikos.JavaScriptSnippets)
- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
- [Xdebug](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-debug)

## Arquivo launch.json

Este repositório inclui um arquivo `launch.json` otimizado para depurar aplicativos PHP usando Docker e Xdebug 3. O arquivo contém as seguintes configurações:

- Nome da configuração de depuração.
- Tipo de solicitação e porta para comunicação com o Xdebug.
- Mapeamento de caminhos entre o contêiner Docker e o espaço de trabalho local.
- Registro de atividades de depuração.
- Hostname para conexão com o depurador.
- Ignorar certos arquivos durante a depuração.
- Configurações avançadas do Xdebug, como tamanho máximo de dados, número máximo de filhos e profundidade máxima.

## Como Usar

1. Clone este repositório ou copie as configurações e o arquivo `launch.json` para o seu projeto.
2. Instale as extensões recomendadas mencionadas acima.
3. Aplique as configurações no arquivo `settings.json` do seu espaço de trabalho ou nas configurações globais do Visual Studio Code.
4. Adicione o arquivo `launch.json` na pasta `.vscode` do seu projeto.
5. Inicie a depuração PHP no Visual Studio Code usando o arquivo `launch.json` fornecido.

Ao seguir estas etapas, você terá um ambiente de desenvolvimento otimizado no Visual Studio Code para trabalhar com PHP, HTML, CSS e JavaScript.

## Contribuição

Sinta-se à vontade para criar problemas ou solicitações de pull para melhorar ainda mais estas configurações. Vamos trabalhar juntos para criar um ambiente de desenvolvimento ainda melhor para todos os desenvolvedores!


