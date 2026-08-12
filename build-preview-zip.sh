#!/bin/bash
# Rebuilds the Jekyll site and packages it into a zip you can share
# (e.g. over Slack) for local review — no Ruby/Jekyll needed on the
# receiving end. See preview-assets/README.txt for what the recipient does.
#
# Usage: ./build-preview-zip.sh
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$REPO_DIR"

# This project's Gemfile.lock was bundled with Ruby 4.0, which the
# system-default `ruby`/`bundle` (often an old 2.6.x on macOS) can't run.
# Prefer Homebrew's ruby if present; fall back to whatever `bundle` is on PATH.
if [ -x /opt/homebrew/opt/ruby/bin/bundle ]; then
  BUNDLE=/opt/homebrew/opt/ruby/bin/bundle
else
  BUNDLE=bundle
fi

echo "Building site..."
rm -rf _site
"$BUNDLE" exec jekyll build --config _config.yml,_config_dev.yml

PKG_DIR="$(mktemp -d)/dil-guides-preview"
mkdir -p "$PKG_DIR"
cp -R _site "$PKG_DIR/site"
cp preview-assets/"Start on Mac.command" "$PKG_DIR/"
cp preview-assets/"Start on Windows.bat" "$PKG_DIR/"
cp preview-assets/README.txt "$PKG_DIR/"
chmod +x "$PKG_DIR/Start on Mac.command"

OUT_ZIP="$HOME/Desktop/dil-guides-preview.zip"
rm -f "$OUT_ZIP"
( cd "$(dirname "$PKG_DIR")" && zip -rq "$OUT_ZIP" "$(basename "$PKG_DIR")" -x "*.DS_Store" )

echo "Done: $OUT_ZIP"
