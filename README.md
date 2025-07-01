<div align="center">
  
# 🛍️ Digital Store

**Uma moderna plataforma de e-commerce para tênis e calçados esportivos**

[![React](https://img.shields.io/badge/React-18.2.0-61DAFB?style=for-the-badge&logo=react&logoColor=white)](https://reactjs.org/)
[![Vite](https://img.shields.io/badge/Vite-4.5.2-646CFF?style=for-the-badge&logo=vite&logoColor=white)](https://vitejs.dev/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-3.3.3-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white)](https://tailwindcss.com/)
[![React Router](https://img.shields.io/badge/React_Router-6.15.0-CA4245?style=for-the-badge&logo=react-router&logoColor=white)](https://reactrouter.com/)

[🚀 Demo](#) • [📖 Documentação](#funcionalidades) • [🛠️ Instalação](#instalação) • [🤝 Contribuição](#contribuição)

---

*Desenvolvido como parte do programa **Geração Tech** - Front-end*

</div>

## 📋 Sobre o Projeto

A **Digital Store** é uma aplicação de e-commerce moderna e responsiva especializada em tênis e calçados esportivos. O projeto foi desenvolvido com foco na experiência do usuário, oferecendo uma interface intuitiva e funcionalidades completas de compra online.

### ✨ Principais Características

- 🎨 **Design Moderno**: Interface limpa e responsiva
- 🛒 **Carrinho de Compras**: Sistema completo de gerenciamento
- 👤 **Autenticação**: Login e cadastro de usuários
- 📱 **Mobile First**: Totalmente responsivo
- 🔍 **Busca Avançada**: Filtros por marca, categoria e preço
- 💳 **Checkout**: Processo de compra simplificado
- 📦 **Pedidos**: Acompanhamento de status dos pedidos

## 🚀 Funcionalidades

### 🏠 Páginas Principais
- **Home**: Página inicial com produtos em destaque
- **Catálogo**: Lista completa de produtos com filtros
- **Produto**: Página detalhada do produto
- **Carrinho**: Gestão de itens e checkout
- **Perfil**: Informações pessoais e histórico de pedidos

### 🔧 Funcionalidades Técnicas
- ⚡ **SPA (Single Page Application)** com React Router
- 🎯 **Componentes Reutilizáveis** e modulares
- 🎨 **Styled Components** com Tailwind CSS
- 📱 **Design Responsivo** para todos os dispositivos
- 🔄 **Estado Global** para gerenciamento de dados
- 🎪 **Carrossel** de produtos e banners

## 🛠️ Tecnologias Utilizadas

### Frontend
- **[React 18.2.0](https://reactjs.org/)** - Biblioteca JavaScript para interfaces
- **[Vite 4.5.2](https://vitejs.dev/)** - Build tool e dev server
- **[React Router DOM 6.15.0](https://reactrouter.com/)** - Roteamento
- **[Tailwind CSS 3.3.3](https://tailwindcss.com/)** - Framework CSS utility-first
- **[Material-UI 5.14.7](https://mui.com/)** - Componentes React

### Desenvolvimento
- **[ESLint](https://eslint.org/)** - Linting de código
- **[Prettier](https://prettier.io/)** - Formatação de código
- **[PostCSS](https://postcss.org/)** - Processamento CSS
- **[Autoprefixer](https://github.com/postcss/autoprefixer)** - Prefixos CSS automáticos

### Deploy
- **[GitHub Pages](https://pages.github.com/)** - Hospedagem estática

## 📁 Estrutura do Projeto

```
Digital Store/
├── 📁 src/
│   ├── 📁 assets/          # Imagens e recursos estáticos
│   ├── 📁 components/      # Componentes reutilizáveis
│   │   ├── 📁 CartPopup/   # Componentes do carrinho
│   │   ├── 📁 MenuSide/    # Menu lateral mobile
│   │   └── 📁 section*/    # Seções específicas
│   ├── 📁 Corpo/          # Layout principal (Header, Main, Footer)
│   ├── 📁 layouts/        # Layouts de página
│   ├── 📁 pages/          # Páginas da aplicação
│   │   ├── 📁 SignUp/     # Cadastro de usuário
│   │   ├── 📁 PagePreCompra/ # Pré-checkout
│   │   └── 📁 Meus-pedidosPG/ # Pedidos do usuário
│   ├── 📁 routes/         # Configuração de rotas
│   ├── 📁 utils/          # Utilitários e mocks
│   ├── 📄 App.jsx         # Componente principal
│   ├── 📄 main.jsx        # Ponto de entrada
│   └── 📄 index.css       # Estilos globais
├── 📄 index.html          # Template HTML
├── 📄 package.json        # Dependências e scripts
├── 📄 tailwind.config.js  # Configuração do Tailwind
├── 📄 vite.config.js      # Configuração do Vite
└── 📄 README.md
```

## 🚀 Instalação

### Pré-requisitos
- **Node.js** (versão 14 ou superior)
- **npm** ou **yarn**

### Passo a passo

1. **Clone o repositório**
```bash
git clone https://github.com/seu-usuario/digital-store.git
cd digital-store
```

2. **Instale as dependências**
```bash
npm install
# ou
yarn install
```

3. **Execute o projeto em desenvolvimento**
```bash
npm run dev
# ou
yarn dev
```

4. **Acesse a aplicação**
```
http://localhost:5173
```

## 📜 Scripts Disponíveis

```bash
# Desenvolvimento
npm run dev          # Inicia servidor de desenvolvimento
npm start           # Alias para npm run dev

# Build e Deploy
npm run build       # Gera build de produção
npm run preview     # Preview do build de produção
npm run deploy      # Deploy para GitHub Pages

# Qualidade de Código
npm run lint        # Executa ESLint
npm run prettier    # Formata código com Prettier
```

## 🎨 Paleta de Cores

A Digital Store utiliza uma paleta de cores moderna e acessível:

```css
🎨 Cores Principais:
• Rosa Principal: #C92071
• Amarelo Destaque: #F6AA1C
• Cinza Escuro: #1F1F1F
• Branco Gelo: #F9F8FE

🎨 Cores Secundárias:
• Lilás: #B5B6F2
• Verde: #52CA76
• Rosa Claro: #EE4266
• Cinza Médio: #474747
```

## 🤝 Contribuição

Contribuições são sempre bem-vindas! Para contribuir:

1. **Fork** o projeto
2. Crie uma **branch** para sua feature (`git checkout -b feature/AmazingFeature`)
3. **Commit** suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. **Push** para a branch (`git push origin feature/AmazingFeature`)
5. Abra um **Pull Request**

## 📝 Licença

Este projeto é parte do programa **Geração Tech** e foi desenvolvido para fins educacionais.

## 👥 Desenvolvedores

<div align="center">

**Desenvolvido com ❤️ durante o programa Geração Tech**

[⬆ Voltar ao topo](#-digital-store)

</div>

---

<div align="center">
  <sub>Projeto desenvolvido como parte do programa Geração Tech - Front-end</sub>
</div>
