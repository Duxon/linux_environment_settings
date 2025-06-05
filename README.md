# Linux Environment Settings

This repository serves as a personal archive for configuration files and setup notes for my Linux environment. The goal is to easily replicate my preferred setup on new or fresh Linux systems.

## Overview

This collection currently includes settings and references for:

* **Shell:** Zsh, with history indicating the use of Oh My Zsh and the Powerlevel10k theme.
* **Terminal Emulator:** Ghostty, with specific theme and font configurations.
* **Fonts:** References to MesloLGS NF, a font often paired with Powerlevel10k.
* **Tools:** Command history related to `fzf`, `conda`, `ai-shell`, and `gptree`.

## Key Configurations & Setup Notes

### Terminal (Ghostty)

* **Configuration File:** `.config/ghostty/config`
* **Theme:** `GitHub-Dark-High-Contrast`
* **Font:** `"MesloLGS NF"`
* **Font Size:** `11.0`
* **Custom Keybind:** `alt+a=toggle_tab_overview`

This configuration indicates a preference for the Ghostty terminal emulator with the MesloLGS NF font.

### Shell (Zsh)

The `.zsh_history` file provides a log of commands, which can be useful for recalling setup steps. Key items identified include:

* **Oh My Zsh & Powerlevel10k:**
    * Powerlevel10k installation:
        ```bash
        git clone --depth=1 [https://github.com/romkatv/powerlevel10k.git](https://github.com/romkatv/powerlevel10k.git) ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
        ```
    * Configuration typically done via `p10k configure`.
* **MesloLGS NF Font Installation:**
    Commands for downloading MesloLGS NF fonts (Regular, Bold, Italic, Bold Italic) into `~/.local/share/fonts` and updating the font cache (`fc-cache -f -v`). These fonts are recommended for Powerlevel10k.
    ```bash
    # Example commands from history:
    mkdir -p ~/.local/share/fonts
    cd ~/.local/share/fonts
    curl -fLO [https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
    # ... (similar for Bold, Italic, Bold Italic)
    fc-cache -f -v
    cd ~
    ```
* **fzf (Command-line fuzzy finder):**
    * Installation:
        ```bash
        git clone --depth 1 [https://github.com/junegunn/fzf.git](https://github.com/junegunn/fzf.git) ~/.fzf
        ~/.fzf/install
        ```
* **ai-shell (AI for the command line):**
    * Installation (globally via npm):
        ```bash
        sudo npm install -g @builder.io/ai-shell
        ```
    * Configuration history shows setup for Ollama, e.g.:
        ```bash
        ai config set AI_PROVIDER ollama
        ai config set OPENAI_API_ENDPOINT http://localhost:11434/v1 # or a remote Ollama instance
        ai config set OPENAI_KEY=ollama
        ai config set MODEL=gemma3:27b # Example model
        ```
* **Aliases:**
    * Example: `alias gs='git status'` added to `~/.zshrc`.

**Note:** The actual `.zshrc` file, which contains the active Zsh configuration (aliases, functions, Oh My Zsh settings, Powerlevel10k theme activation), is not currently part of this repository. Adding it would be beneficial for a more complete backup.

### Default Terminal (GNOME)

The `.zsh_history` includes commands for setting Ghostty as the default terminal application
