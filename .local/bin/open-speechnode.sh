#!/bin/bash

# Kill any running SpeechNote processes
pkill -f dsnote

SETTINGS_FILE="/home/duxon/.var/app/net.mkiol.SpeechNote/config/net.mkiol/dsnote/settings.conf"

# Temporarily disable tray mode
sed -i 's/^start_in_tray=true/start_in_tray=false/' "$SETTINGS_FILE"
sed -i 's/^use_tray=true/use_tray=false/' "$SETTINGS_FILE"

# Launch SpeechNote in the background
flatpak run net.mkiol.SpeechNote &

# Give SpeechNote a moment to start up and read the settings
sleep 2

# Re-enable tray mode
sed -i 's/^start_in_tray=false/start_in_tray=true/' "$SETTINGS_FILE"
sed -i 's/^use_tray=false/use_tray=true/' "$SETTINGS_FILE"

echo "SpeechNote launched with window, tray mode re-enabled."
