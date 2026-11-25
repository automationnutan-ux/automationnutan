#!/bin/bash
echo "Exporting workflows from automationnutan..."
docker exec -u node automationnutan n8n export:workflow --all --separate --output=/backup/workflows
git add .
git commit -m "Auto-sync workflows: $(date '+%Y-%m-%d %H:%M')"
git push -u origin main
echo "Portfolio synced to GitHub!"
