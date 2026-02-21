#!/bin/bash
if ! command -v bd &> /dev/null; then
  npm install -g @beads/bd 2>/dev/null
fi

if [ ! -d .beads/dolt ] && [ ! -f .beads/beads.db ]; then
  bd init --from-jsonl --prefix remarkable-sync --quiet 2>/dev/null
fi

exit 0
