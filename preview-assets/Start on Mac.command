#!/bin/bash
cd "$(dirname "$0")/site"
PORT=8123
echo "Starting local preview server on port $PORT..."
echo "Leave this window open while you're viewing the site. Close it when you're done."
python3 -m http.server "$PORT" &
SERVER_PID=$!
sleep 1
open "http://localhost:$PORT/"
wait $SERVER_PID
