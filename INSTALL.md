# Installation

Make sure you have [`cURL`](https://curl.se/) and [`jq`](https://stedolan.github.io/jq/) installed.

If you would like to have markdown rendering with option `-m`, [`glow`](https://github.com/charmbracelet/glow) is required (Recommend).

## Manual (Git Clone)

1. Clone this repository somewhere on your machine. This guide will assume `$HOME/.zsh/zsh-ask`.
   ```shell
   git clone https://github.com/pauldatta/zsh-ask-azure-openai $HOME/.zsh/zsh-ask
   ```
2. Add the following to your `.zshrc`:
   ```shell
   export ZSH_ASK_API_URL="<Deployment URL>"
   export ZSH_ASK_API_KEY="<Deployment Key>"
   export ZSH_ASK_MARKDOWN=true # Optional
   source $HOME/.zsh/zsh-ask/zsh-ask.zsh
   ```
3. Start a new terminal session.

## Uninstallation

1. Remove the code referencing this plugin from `~/.zshrc`.
2. Remove the git repository from your hard drive
