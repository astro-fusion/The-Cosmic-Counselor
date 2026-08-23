#!/usr/bin/env bash
# Build The Cosmic Counselor in all formats and languages.
#
# Usage:
#   ./scripts/build-all.sh                 # everything: html+pdf+epub x en+hi+ne
#   ./scripts/build-all.sh epub            # single format, all languages
#   ./scripts/build-all.sh "html epub"     # multiple formats, all languages
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
read -ra FORMATS <<< "${1:-html pdf epub}"
EDITIONS=("$ROOT" "$ROOT/translations/hi" "$ROOT/translations/ne")

command -v quarto >/dev/null || { echo "error: quarto not found on PATH" >&2; exit 1; }

for dir in "${EDITIONS[@]}"; do
  name=$(basename "$dir")
  label=$([ "$dir" = "$ROOT" ] && echo "en" || echo "$name")
  # The first format's render cleans _book/ (removes stale output);
  # subsequent formats must pass --no-clean or they would delete
  # each other's artifacts.
  for i in "${!FORMATS[@]}"; do
    fmt="${FORMATS[$i]}"
    extra=$([ "$i" -eq 0 ] && echo "" || echo "--no-clean")
    echo "==> [$label] quarto render --to $fmt $extra"
    (cd "$dir" && quarto render --to "$fmt" $extra)
  done
done

echo ""
echo "Artifacts:"
find "$ROOT/_book" -maxdepth 2 \( -name "*.pdf" -o -name "*.epub" \) -o -maxdepth 1 -name "index.html" | sort
