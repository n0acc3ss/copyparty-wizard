#!/usr/bin/env bash
# deploy.sh — push latest changes to GitHub and trigger Pages rebuild
# Usage: bash deploy.sh "optional commit message"

set -e

MSG="${1:-update wizard}"

git add -A
git commit -m "$MSG" || { echo "Nothing to commit."; exit 0; }
git push

echo ""
echo "✅  Pushed! GitHub Pages will rebuild in ~60 seconds."
echo "    https://$(git remote get-url origin | sed 's|https://github.com/||;s|\.git$||' | awk -F/ '{print $1".github.io/"$2}')"
