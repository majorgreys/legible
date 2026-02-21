#!/bin/bash
if ! command -v bd &> /dev/null; then
  npm install @beads/bd --save-dev 2>/dev/null
  if [ -n "$CLAUDE_ENV_FILE" ]; then
    echo "export PATH=\"$PWD/node_modules/.bin:\$PATH\"" >> "$CLAUDE_ENV_FILE"
  fi
  export PATH="$PWD/node_modules/.bin:$PATH"
fi

if [ ! -d .beads/dolt ] && [ ! -f .beads/beads.db ]; then
  bd init --from-jsonl --prefix remarkable-sync --quiet 2>/dev/null
fi

exit 0
