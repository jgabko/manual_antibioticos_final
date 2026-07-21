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
e por **antibiótico**, permitindo consulta rápida de classe, dose para adultos e pediátrica,
dose máxima, via de administração, espectro de ação e observações relevantes.

O objetivo do projeto é incentivar o uso consciente de antimicrobianos, contribuindo para a
redução do desenvolvimento de resistência bacteriana e para uma prática clínica mais rápida,
segura e sustentável (substituindo manuais impressos por uma ferramenta digital).

<!-- Screenshots -->
### Screenshots

<div align="center"> 
  <img src="https://placehold.co/600x400?text=Tela+Inicial" alt="tela inicial" />
  <img src="https://placehold.co/600x400?text=Busca" alt="tela de busca" />
</div>

<!-- TechStack -->
### Tech Stack

<details>
  <summary>App</summary>
  <ul>
    <li><a href="https://dart.dev/">Dart</a></li>
    <li><a href="https://flutter.dev/">Flutter</a> (Material 3)</li>
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
- 📋 Resultados agrupados em **Patologia** e **Antibiótico**, com opção de "mostrar tudo"
- 💊 Tela de detalhes da patologia com **primeira e segunda escolha** de tratamento (classe, dose adulto/pediátrica, dose máxima, via de administração e observações)
- 🧪 Tela de detalhes do antibiótico com indicações/doenças relacionadas
- 🔗 Navegação cruzada entre uma patologia e o antibiótico indicado (e vice-versa)
- ⭐ Sistema de **Favoritos** para salvar patologias e antibióticos consultados com frequência
- ℹ️ Modal informativo sobre uso consciente de antimicrobianos
- 📱 Layout responsivo (ajustes automáticos para telas desktop e mobile)

<!-- Color Reference -->
### Paleta de Cores

| Cor                  | Hex                                                                  |
| --------------------- | --------------------------------------------------------------------- |
| Cor primária (Deep Purple) | ![#673AB7](https://via.placeholder.com/10/673AB7?text=+) #673AB7 |
| Destaque (Amber)      | ![#FFC107](https://via.placeholder.com/10/FFC107?text=+) #FFC107 |
| Fundo                 | ![#F5F5F5](https://via.placeholder.com/10/F5F5F5?text=+) #F5F5F5 |
| Texto                 | ![#000000](https://via.placeholder.com/10/000000?text=+) #000000 |

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

* [ ] Ampliação da base de dados de patologias e antibióticos
* [ ] Ajuste de doses por função renal/hepática
* [ ] Modo escuro

<!-- License -->
## Licença

Distribuído sem licença definida. Consulte o repositório para mais informações.
