@echo off
cd /d "%~dp0site"
set PORT=8123
echo Starting local preview server on port %PORT%...
echo Leave this window open while you're viewing the site. Close it when you're done.
start "" "http://localhost:%PORT%/"
python -m http.server %PORT%
