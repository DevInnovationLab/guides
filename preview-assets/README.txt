DIL Analytics Manual — local preview
=====================================

This is a snapshot of the site for review. It won't work by double-clicking
index.html directly — the pages need to be served by a (tiny, local) web
server, because they reference things like /assets/css/... from the site
root. The scripts below start that server for you; nothing is installed
and nothing leaves your computer.

On a Mac:
  Double-click "Start on Mac.command".
  If macOS blocks it the first time (unidentified developer), right-click
  the file, choose Open, then confirm.
  Your browser will open to the site automatically.

On Windows:
  Double-click "Start on Windows.bat".
  Your browser will open to the site automatically.
  (Requires Python to already be installed, which is common on work
  laptops — if it's missing, the window will say so.)

Either way:
  - The site opens at http://localhost:8123/
  - Leave the black terminal/command window open while you're browsing —
    closing it stops the server. It's safe to close once you're done.
  - Everything runs locally; no internet connection is required (a couple
    of things, like Google Analytics and any linked Google Docs, do need
    one, but the pages themselves don't).

If neither script works (e.g. you're on Linux, or Python isn't installed):
  Open a terminal in the "site" folder and run:
    python3 -m http.server 8123
  then open http://localhost:8123/ in a browser.
