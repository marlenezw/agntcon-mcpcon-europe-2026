#!/usr/bin/env bash
# Capture a PNG screenshot of the deck for a given slide URL.
# Usage: ./tools/snapshot.sh "http://localhost:8000/?note=hi"
set -e

URL="$1"
OUT="${2:-deck.png}"

# Render the deck and save a screenshot
eval "npx playwright screenshot $URL $OUT"
echo "Saved screenshot to $OUT"
