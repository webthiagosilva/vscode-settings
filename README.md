# Configurações VS Code para Desenvolvimento Web

Este repositório oferece um conjunto robusto de configurações otimizadas para VS Code, destinadas ao desenvolvimento eficiente em PHP, HTML, CSS e JavaScript. Explore uma coleção cuidadosamente selecionada de extensões, dicas de configuração e um guia para depuração com Docker e Xdebug.

- [Configurações VS Code para Desenvolvimento Web](#configurações-vs-code-para-desenvolvimento-web)
	- [Principais Configurações](#principais-configurações)
	- [Extensões Recomendadas](#extensões-recomendadas)
	- [Depuração com Docker e Xdebug](#depuração-com-docker-e-xdebug)
	- [Como Usar](#como-usar)
	- [Contribuição](#contribuição)

## Principais Configurações

- **Geral**: Aperfeiçoe sua experiência com temas visuais como Dracula e ícones do Material Icon Theme.
- **Editor**: Personalize o tamanho da fonte, estilo do cursor, espaçamentos e muito mais.
- **Explorer**: Gerencie arquivos e pastas eficientemente com configurações intuitivas.
- **Arquivos**: Garanta a consistência com configurações de final de linha e associações de arquivo detalhadas.
- **Pesquisa**: Acelere suas buscas com padrões de exclusão configuráveis.
- **Segurança**: Navegue com confiança utilizando configurações de segurança avançadas.
- **Intelephense & ESLint**: Melhore a inteligência de código e mantenha o código limpo e consistente.
- **Formatação com Prettier**: Garanta um estilo de código uniforme automaticamente.
- **Outras Linguagens**: Desfrute de configurações específicas otimizadas para Shell, JSON, HTML, CSS, JavaScript.
- **Emmet & GitHub Copilot**: Amplie sua produtividade com ferramentas auxiliares poderosas.

## Extensões Recomendadas

Aprimore sua experiência de desenvolvimento com extensões cuidadosamente selecionadas:

- [Dracula Official](https://marketplace.visualstudio.com/items?itemName=dracula-theme.theme-dracula)
- [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=pkief.material-icon-theme)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml)
- [PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client)
- [PHP Namespace Resolver](https://marketplace.visualstudio.com/items?itemName=mehedidracula.php-namespace-resolver)
- [PHP Debug](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-debug)
- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
- [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=github.copilot)
- [GitHub Copilot Chat](https://marketplace.visualstudio.com/items?itemName=github.copilot-chat)
- [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
- [Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner)
- [CSS Peek](https://marketplace.visualstudio.com/items?itemName=pranaygp.vscode-css-peek)
- [HTML CSS Class Completion](https://marketplace.visualstudio.com/items?itemName=zignd.html-css-class-completion)
- [HTML CSS Support](https://marketplace.visualstudio.com/items?itemName=ecmel.vscode-html-css)

## Depuração com Docker e Xdebug

As configurações fornecem um `launch.json` otimizado para depuração de PHP com Docker e Xdebug 3. A configuração facilita a depuração do código PHP, permitindo que você interrompa a execução, inspecione variáveis e percorra o código em tempo real.

Para começar:

1. Certifique-se de que o Xdebug esteja instalado e configurado corretamente em seu ambiente Docker.
2. Ajuste as configurações de `pathMappings` no `launch.json` para corresponder ao mapeamento de diretórios do seu projeto.
3. Configure a porta do Xdebug (padrão é `9003`) para corresponder à configuração do seu ambiente.
4. Inicie o container do Docker e abra o projeto no VS Code.
5. Vá até a aba "Run and Debug" (Executar e Depurar) no VS Code e inicie a sessão de depuração selecionando "Listen for XDebug" ou "Launch currently open script".

## Como Usar

1. Clone este repositório ou copie os arquivos de configuração para o diretório `.vscode` no seu projeto.
2. Abra o seu projeto com o VS Code.
3. Instale as [Extensões Recomendadas](#extensões-recomendadas) listadas acima. O VS Code pode solicitar automaticamente a instalação ao detectar o arquivo `extensions.json`.
4. Se estiver usando Docker e Xdebug, siga as instruções na seção [Depuração com Docker e Xdebug](#depuração-com-docker-e-xdebug).
5. Explore as configurações do `settings.json` e ajuste conforme necessário para se adequar ao seu fluxo de trabalho.
6. Inicie a codificação! As extensões e configurações fornecidas devem oferecer uma experiência de desenvolvimento enriquecida e produtiva.


## Contribuição

Contribuições são bem-vindas para aprimorar estas configurações. Sinta-se à vontade para abrir problemas (issues) ou enviar pull requests com melhorias.
