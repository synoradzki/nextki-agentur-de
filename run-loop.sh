#!/bin/bash
# NextKI Agentur – SEO Loop Trigger
# Wird von crontab aufgerufen

export PATH="$HOME/.nvm/versions/node/v22.17.1/bin:/opt/homebrew/bin:$PATH"

BASE_DIR="/Users/christian/Library/Mobile Documents/com~apple~CloudDocs/Claude/WEB SEO Loop"
PROJECT_DIR="$BASE_DIR/nextki-agentur-de"
SKILL_FILE="$BASE_DIR/SKILL.md"
LOG_FILE="$PROJECT_DIR/loop.log"

echo "$(date '+%Y-%m-%d %H:%M:%S') – Loop gestartet" >> "$LOG_FILE"

cd "$PROJECT_DIR" || exit 1

claude -p "$(cat "$SKILL_FILE")" --dangerously-skip-permissions 2>&1 | tail -50 >> "$LOG_FILE"

echo "$(date '+%Y-%m-%d %H:%M:%S') – Loop beendet" >> "$LOG_FILE"
echo "---" >> "$LOG_FILE"
