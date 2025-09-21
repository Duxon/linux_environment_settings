#!/bin/bash

# --- CONFIGURATION ---
# The short model ID from the --print-available-models command
MODEL_ID="en_whisper_large3_turbo"

# --- SCRIPT ---
# 1. Set the Speech-to-Text model using its ID
flatpak run net.mkiol.SpeechNote --action set-stt-model --id "$MODEL_ID"

# 2. Trigger the listening action for the active window
flatpak run net.mkiol.SpeechNote --action start-listening-active-window
