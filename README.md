## Installation

### Objectif  
Ce template a pour but d’installer automatiquement **Live Server** (via le runtime `live-server`) de façon sécurisée, sans laisser de vulnérabilités connues dans ses dépendances :

- Console-Ninja (ou Quokka) détecte la présence d’un serveur de développement parmi les **environnements et frameworks supportés** (Webpack/CRA, Vite, Angular CLI, Jest, Cypress, Next.js, Nest.js, http-server, serve, live-server, Nuxt, Remix, Qwik, Astro, etc.).  
- À l’installation classique de `live-server`, `npm audit` révèle des vulnérabilités (modérées à critiques) dans certains sous-modules (`braces`, `debug`, `ms`, `micromatch`, etc.).  
- Ce template verrouille et force l’usage de versions corrigées pour éliminer ces vulnérabilités, via `npm-force-resolutions` et un lockfile dédié.

---

## Prérequis  
- **Node.js** ≥ 14 et **npm** ≥ 6  
- **Git** installé  
- Un terminal Unix (bash, zsh, …)

---

## Structure du dépôt template  
```text
{YOUR_REPO}/
├── template/
│   ├── package.json
│   └── package-lock.json
└── setup.sh
