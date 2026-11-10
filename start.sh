#!/usr/bin/env bash
# Starts Katuvisa on this computer and opens it in the browser.
cd "$(dirname "$0")" || exit 1
PORT=8765
( sleep 1; xdg-open "http://localhost:$PORT/" >/dev/null 2>&1 ) &
echo "Katuvisa is running at http://localhost:$PORT/  (press Ctrl+C to stop)"
exec python3 -m http.server "$PORT" --bind 127.0.0.1
