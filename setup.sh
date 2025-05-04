#!/usr/bin/env bash
set -euo pipefail

echo "➡️  Application du template Console-Ninja…"

# 1. Copier les fichiers template
cp -v template/package.json .
cp -v template/package-lock.json .

# 2. Nettoyer un éventuel précédent état
rm -rf node_modules

# 3. Installer proprement
echo "➡️  Installation des dépendances (npm ci)…"
npm ci

echo "✅  Configuration Console-Ninja appliquée avec succès !"
