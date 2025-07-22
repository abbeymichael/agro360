#!/bin/bash

# Initialize repo if needed
if [ ! -d ".git" ]; then
  echo "🛠️  No Git repo found. Initializing..."
  git init
  read -p "📦 Enter remote GitHub URL (e.g., https://github.com/you/repo.git): " REMOTE_URL
  git remote add origin "$REMOTE_URL"
  git branch -M main
fi

# Ask for commit message
read -p "📝 Enter commit message: " COMMIT_MSG

# Exit if empty message
if [ -z "$COMMIT_MSG" ]; then
  echo "❌ Commit message is required. Aborting."
  exit 1
fi

# Run Git commands
git add .
git commit -m "$COMMIT_MSG"
git push -u origin main

echo "✅ Changes committed and pushed: $COMMIT_MSG"
