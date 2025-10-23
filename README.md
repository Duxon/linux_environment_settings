# My Linux Setup

This repository holds the configuration files and setup script for my personal Linux environment. It's a simple way for me to quickly get up and running on a new machine.

## What's inside?

*   **A slick terminal experience:** I use [Ghostty](https://ghostty.org/) as my terminal, with the `GitHub-Dark-High-Contrast` theme and the `MesloLGS NF` font. It's clean, fast, and looks great.
*   **A powerful shell:** My shell is powered by [Zsh](https://www.zsh.org/), [Oh My Zsh](https://ohmyz.sh/), and the [Powerlevel10k](https://github.com/romkatv/powerlevel10k) theme. This combination gives me a powerful, customizable, and beautiful command line.
*   **Essential tools:** I've included a few of my favorite command-line tools:
    *   `fzf`: A command-line fuzzy finder that's great for finding files and searching through history.
    *   `ai-shell`: An AI assistant for the command line.
*   **Speech-to-text scripts:** A set of scripts to control [SpeechNote](https://flathub.org/apps/net.mkiol.SpeechNote) for transcription.

## How to use it

To set up a new machine with my configuration, you can run the `setup.sh` script. This will install all the necessary tools and copy the configuration files to the correct locations.

```bash
./setup.sh
```

After running the script, you'll need to restart your shell for the changes to take effect.

## My dotfiles

This repository also includes my personal dotfiles:

*   `.zshrc`: My Zsh configuration file.
*   `.ai-shell`: The configuration file for `ai-shell`.
*   `.config/ghostty/config`: The configuration file for the Ghostty terminal.

Feel free to browse the files and use whatever you find useful!