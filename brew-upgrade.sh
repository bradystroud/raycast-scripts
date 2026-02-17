#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Brew Upgrade
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Developer

# Documentation:
# @raycast.description Runs brew upgrade in a new iTerm2 window
# @raycast.author bradystroud
# @raycast.authorURL https://raycast.com/bradystroud

osascript <<EOF
tell application "iTerm"
    activate
    set newWindow to (create window with default profile)
    tell current session of newWindow
        write text "brew upgrade"
    end tell
end tell
EOF