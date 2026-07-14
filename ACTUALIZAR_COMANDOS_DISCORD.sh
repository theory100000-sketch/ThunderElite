#!/usr/bin/env sh
set -e
cd "$(dirname "$0")"
[ -d bot/node_modules/discord.js ] || npm --prefix bot install --no-audit --no-fund
node bot/deploy-commands.js
