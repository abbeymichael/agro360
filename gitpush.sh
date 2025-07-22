#!/bin/bash

# Usage: ./gitpush.sh "Your commit message here"

# Exit if no message is passed
if [ -z "$1" ]; then
  echo "❌ Please provide a commit message."
  echo "Usage: ./gitpush.sh \"Your message\""
  exit 1
fi

# Auto add, commit, and push
git add .
git commit -m "$1"
git push

echo "✅ Changes pushed with message: $1"
