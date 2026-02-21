#!/bin/bash
echo "Installing bd (beads issue tracker)..."
npm install -g @beads/bd 2>/dev/null

if [ ! -d .beads/dolt ] && [ ! -f .beads/beads.db ]; then
  bd init --from-jsonl --prefix remarkable-sync --quiet 2>/dev/null
fi

echo "✓ bd is ready"
bd ready 2>/dev/null || bd list 2>/dev/null
