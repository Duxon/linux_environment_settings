#!/bin/bash

# --- CONFIGURATION ---
# The exact short model ID from your command's output
MODEL_ID="de_whisper_large3_turbo"

# --- SCRIPT ---
# 1. Set the Speech-to-Text model to English using its ID
flatpak run net.mkiol.SpeechNote --action set-stt-model --id "$MODEL_ID"

# 2. Trigger the listening action for the active window
flatpak run net.mkiol.SpeechNote --action start-listening-active-window
