⬇︎-----------⬇︎-----------⬇︎- À effacer après initialisation -⬇︎-----------⬇︎-----------⬇︎


## Installation du template

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
```

---

### Utilisation dans un nouveau projet

1.    Cloner le dépôt template et se positionner dans le dossier :
```bash 
git clone https://github.com/votre-org/console-ninja-template.git mon-projet
cd mon-projet
```
2.    Lancer la configuration :
```bash
npm run setup
```
  ou directement :
```bash
bash setup.sh
```
3.    Vérifier qu’il n’y a plus de vulnérabilités :
```bash
npm audit
```
→ aucune alerte ne doit remonter pour live-server ni pour ses sous-dépendances.

---

### Personnalisation & maintenance

 •    Vous pouvez mettre à jour les versions des overrides dans template/package.json si de nouvelles vulnérabilités sont découvertes.
  
 •    Pour ajouter un autre runtime ou test‐runner supporté (ex. http-server, jest, vite…), ajoutez-le simplement aux dependencies et ajustez le LOCKFILE en lançant localement :
```bash
npm install <nouveau-package>
npm ci
```
puis copiez à nouveau le package-lock.json dans template/.

 •    Pensez à committer et pousser vos évolutions sur le dépôt template pour qu’elles soient répercutées dans tous vos nouveaux projets.

 ---

 ## Vérification de l’intégrité

 ## Téléchargements et intégrité

- **Archive** : [Console-ninja-Template-1.0.0.tar.gz](https://github.com/…/releases/download/v1.0.0/Console-ninja-Template-1.0.0.tar.gz)
- **SHA-256** : 
- **Calculez son SHA-256** :
   ```bash
   shasum -a 256 Console-ninja-Template-1.0.0.tar.gz
   ```
- **Comparer avec ce SHA-256** :



⬆︎-----------⬆︎-----------⬆︎- À effacer après initialisation -⬆︎-----------⬆︎-----------⬆︎
