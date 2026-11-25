#!/usr/bin/env bash
# Builds the private staging copy of Wet Ink from the dev branch.
# Usage: .github/stage.sh <source index.html> <output dir>
set -euo pipefail
SRC="$1"; OUT="$2"
mkdir -p "$OUT"
BADGE='<div id="devtag" style="position:fixed;top:6px;left:6px;z-index:99999;background:#e8762b;color:#fff;font:bold 11px/1 system-ui,sans-serif;padding:4px 7px;border-radius:6px;letter-spacing:1px;pointer-events:none">DEV</div>'
sed \
  -e "s/'wetink_/'wetinkdev_/g" \
  -e "s|<title>Wet Ink</title>|<title>Wet Ink DEV</title><meta name=\"robots\" content=\"noindex,nofollow\">|" \
  -e "s|</body>|${BADGE}</body>|" \
  "$SRC" > "$OUT/index.html"
echo "staged $SRC -> $OUT/index.html"
