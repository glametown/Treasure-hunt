#!/usr/bin/env bash
set -e
# One-command script to push index.html to https://github.com/glametown/Treasure-hunt
git init
git checkout -B main
git add index.html README.md
git commit -m "Deploy 30-Gift Starlit Treasure Hunt website"
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/glametown/Treasure-hunt.git
git push -u origin main --force
echo "Pushed to https://github.com/glametown/Treasure-hunt! Now enable GitHub Pages under Settings -> Pages (Branch: main)."
