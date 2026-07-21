<div align="center">

  <h1>💊 Manual de Antibióticos</h1>

  <p>
    Aplicativo Flutter multiplataforma para consulta rápida de esquemas antibioticoterápicos,
    organizado por patologia/microrganismo e por antibiótico, com sistema de favoritos.
  </p>

<!-- Badges -->
<p>
  <a href="https://github.com/jgabko/manual_antibioticos_final/graphs/contributors">
    <img src="https://img.shields.io/github/contributors/jgabko/manual_antibioticos_final" alt="contributors" />
  </a>
  <a href="https://github.com/jgabko/manual_antibioticos_final/commits/master/">
    <img src="https://img.shields.io/github/last-commit/jgabko/manual_antibioticos_final" alt="last update" />
  </a>
  <a href="https://github.com/jgabko/manual_antibioticos_final/network/members">
    <img src="https://img.shields.io/github/forks/jgabko/manual_antibioticos_final" alt="forks" />
  </a>
  <a href="https://github.com/jgabko/manual_antibioticos_final/stargazers">
    <img src="https://img.shields.io/github/stars/jgabko/manual_antibioticos_final" alt="stars" />
  </a>
  <a href="https://github.com/jgabko/manual_antibioticos_final/issues/">
    <img src="https://img.shields.io/github/issues/jgabko/manual_antibioticos_final" alt="open issues" />
  </a>
</p>

</div>

<br />

<!-- Table of Contents -->
# Índice

- [Sobre o Projeto](#sobre-o-projeto)
  * [Screenshots](#screenshots)
  * [Tech Stack](#tech-stack)
  * [Funcionalidades](#funcionalidades)
  * [Paleta de Cores](#paleta-de-cores)
  * [Variáveis de Ambiente](#variáveis-de-ambiente)
- [Como Começar](#como-começar)
  * [Pré-requisitos](#pré-requisitos)
  * [Instalação](#instalação)
  * [Rodando os Testes](#rodando-os-testes)
  * [Rodando Localmente](#rodando-localmente)
  * [Deploy](#deploy)
- [Roadmap](#roadmap)
- [Licença](#licença)

<!-- About the Project -->
## Sobre o Projeto

O **Manual de Antibióticos** é um aplicativo desenvolvido em Flutter que funciona como
ferramenta de apoio à decisão clínica para prescrição racional de antimicrobianos. Ele reúne,
em uma única base local, esquemas de primeira e segunda escolha organizados por **patologia/microrganismo**
(44 patologias catalogadas) e por **antibiótico** (26 antibióticos catalogados), permitindo consulta
rápida de classe, dose para adultos e pediátrica, dose máxima, via de administração, espectro de ação
e observações relevantes.

O objetivo do projeto é incentivar o uso consciente de antimicrobianos, contribuindo para a
redução do desenvolvimento de resistência bacteriana e para uma prática clínica mais rápida,
segura e sustentável (substituindo manuais impressos por uma ferramenta digital).

A versão mais recente do app passou por uma **reformulação visual completa**, migrando de uma
paleta roxo/âmbar genérica para um **design system clínico próprio** (tema azul, tipografia e
componentes dedicados), além de reorganizar o código em módulos de tema separados do restante da lógica.

<!-- Screenshots -->
### Screenshots

<div align="center"> 
  <img src="screenshots/index_manual.png" alt="tela inicial" width="260" />
  <img src="screenshots/pesquisa_manual.png" alt="tela de busca" width="260" />
</div>

<!-- TechStack -->
### Tech Stack

<details>
  <summary>App</summary>
  <ul>
    <li><a href="https://dart.dev/">Dart</a></li>
    <li><a href="https://flutter.dev/">Flutter</a> (Material 3)</li>
    <li>Design system próprio (<code>lib/theme/app_theme.dart</code>): paleta clínica, tipografia, cards, botões e chips centralizados</li>
    <li><code>lib/theme/responsive_body.dart</code>: componente que limita a largura do conteúdo em telas grandes (desktop/web) mantendo o layout mobile intacto</li>
  </ul>
</details>

<details>
  <summary>Plataformas suportadas</summary>
  <ul>
    <li>Android</li>
    <li>iOS</li>
    <li>Web</li>
    <li>Windows</li>
    <li>Linux</li>
    <li>macOS</li>
  </ul>
</details>

<details>
  <summary>Principais dependências</summary>
  <ul>
    <li><code>flutter</code> (SDK)</li>
    <li><code>cupertino_icons</code></li>
    <li><code>flutter_lints</code> (dev)</li>
    <li><code>flutter_test</code> (dev)</li>
  </ul>
</details>

<!-- Features -->
### Funcionalidades

- 🔍 Busca unificada por **antibiótico**, **doença/patologia** ou **microrganismo**
- 📋 Resultados agrupados em **Patologia** e **Antibiótico** (com ícones dedicados — vírus e comprimido), com opção de "mostrar tudo"
- 💊 Tela de detalhes da patologia com **primeira e segunda escolha** de tratamento (classe, dose adulto/pediátrica, dose máxima, via de administração e observações), com rótulos formatados automaticamente a partir dos campos da base (`formatFieldLabel`)
- 🧪 Tela de detalhes do antibiótico com indicações/doenças relacionadas, agora em layout de linhas rotuladas
- 🔗 Navegação cruzada entre uma patologia e o antibiótico indicado (e vice-versa)
- ⭐ Sistema de **Favoritos** para salvar patologias e antibióticos consultados com frequência, com estado vazio ilustrado ("Nenhum item salvo ainda")
- 🔎 Estado vazio dedicado para buscas sem resultado ("Nenhum resultado encontrado")
- ℹ️ Modal informativo sobre uso consciente de antimicrobianos
- 📱 Layout responsivo com largura de conteúdo limitada em telas grandes (`ResponsiveBody`) e transições de página adaptadas por plataforma (Android/Windows/Linux vs. iOS/macOS)

<!-- Color Reference -->
### Paleta de Cores

Definida em `lib/theme/app_theme.dart`, com visual "clínico/sério" (azul como cor primária):

| Cor                     | Hex                                                                  |
| ------------------------ | --------------------------------------------------------------------- |
| Primária (Azul clínico)  | ![#1565C0](https://via.placeholder.com/10/1565C0?text=+) #1565C0 |
| Destaque (Azul secundário) | ![#0288D1](https://via.placeholder.com/10/0288D1?text=+) #0288D1 |
| Alerta / contraindicações | ![#C62828](https://via.placeholder.com/10/C62828?text=+) #C62828 |
| Sucesso / confirmação    | ![#2E7D32](https://via.placeholder.com/10/2E7D32?text=+) #2E7D32 |
| Fundo                    | ![#F5F7FA](https://via.placeholder.com/10/F5F7FA?text=+) #F5F7FA |
| Superfície (cards)       | ![#FFFFFF](https://via.placeholder.com/10/FFFFFF?text=+) #FFFFFF |
| Texto primário           | ![#1A2027](https://via.placeholder.com/10/1A2027?text=+) #1A2027 |
| Texto secundário         | ![#5B6470](https://via.placeholder.com/10/5B6470?text=+) #5B6470 |
| Fundo de chip            | ![#E3F0FC](https://via.placeholder.com/10/E3F0FC?text=+) #E3F0FC |

<!-- Env Variables -->
### Variáveis de Ambiente

Este projeto **não requer variáveis de ambiente**. Toda a base de dados de antibióticos e patologias
é local, definida em `lib/data/database.dart`, sem chamadas a APIs externas ou chaves de API.

<!-- Getting Started -->
## Como Começar

<!-- Prerequisites -->
### Pré-requisitos

Este projeto utiliza o Flutter SDK (versão do Dart `^3.7.0`).

```bash
 flutter --version
```

Se ainda não tiver o Flutter instalado, siga o guia oficial: https://docs.flutter.dev/get-started/install

<!-- Installation -->
### Instalação

Instale as dependências do projeto com:

```bash
  flutter pub get
```

<!-- Running Tests -->
### Rodando os Testes

Para rodar os testes, execute o comando:

```bash
  flutter test
```

<!-- Run Locally -->
### Rodando Localmente

Clone o projeto

```bash
  git clone https://github.com/jgabko/manual_antibioticos_final.git
```

Acesse a pasta do projeto

```bash
  cd manual_antibioticos_final
```

Instale as dependências

```bash
  flutter pub get
```

Execute o aplicativo (escolha o dispositivo/plataforma desejada)

```bash
  flutter run
```

<!-- Deployment -->
### Deploy

Para gerar builds de produção, utilize os comandos correspondentes à plataforma alvo:

```bash
  flutter build apk        # Android
  flutter build ios        # iOS
  flutter build web        # Web
  flutter build windows    # Windows
  flutter build linux      # Linux
  flutter build macos      # macOS
```

<!-- Roadmap -->
## Roadmap

* [x] Busca por antibiótico, patologia e microrganismo
* [x] Sistema de favoritos
* [x] Navegação cruzada entre patologia e antibiótico
* [x] Design system próprio (tema clínico, tipografia e componentes centralizados)
* [x] Layout responsivo com largura máxima de conteúdo em telas grandes
* [x] Estados vazios ilustrados (sem resultados / sem favoritos)
* [x] Expansão da base de dados (44 patologias e 26 antibióticos)
* [ ] Persistência dos favoritos entre sessões (armazenamento local)
* [ ] Ajuste de doses por função renal/hepática
* [ ] Modo escuro

<!-- License -->
## Licença

Distribuído sem licença definida. Consulte o repositório para mais informações.
