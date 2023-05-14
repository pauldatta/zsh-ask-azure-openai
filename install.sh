#!/bin/bash
# install.sh for zsh-ask-azure-openai plugin

# check if zsh is installed
if ! command -v zsh &> /dev/null
then
    echo "zsh is not installed. Installing it now."
    sudo apt-get update && sudo apt-get install zsh -y
fi

# check if git is installed
if ! command -v git &> /dev/null
then
    echo "git is not installed. Installing it now."
    sudo apt-get update && sudo apt-get install git -y
fi

# check if curl is installed
if ! command -v curl &> /dev/null
then
    echo "curl is not installed. Installing it now."
    sudo apt-get update && sudo apt-get install curl -y
fi

# check if jq is installed
if ! command -v jq &> /dev/null
then
    echo "jq is not installed. Installing it now."
    sudo apt-get update && sudo apt-get install jq -y
fi

# clone the plugin repository
git clone https://github.com/pauldatta/zsh-ask-azure-openai $HOME/.zsh/zsh-ask

# ask the user for the environment variables and append them to ~/.zshrc
echo "Please enter the following information to set up the plugin:"
read -p "Deployment URL: " ZSH_ASK_API_URL
read -p "Deployment Key: " ZSH_ASK_API_KEY
echo "export ZSH_ASK_API_URL=\"$ZSH_ASK_API_URL\"" >> $HOME/.zshrc
echo "export ZSH_ASK_API_KEY=\"$ZSH_ASK_API_KEY\"" >> $HOME/.zshrc
echo "export ZSH_ASK_MARKDOWN=true # Recommended" >> $HOME/.zshrc
echo "source $HOME/.zsh/zsh-ask/zsh-ask.zsh" >> $HOME/.zshrc

# restart the terminal or source .zshrc again
echo "Please restart your terminal or run 'source $HOME/.zshrc' to complete the setup."
echo "Enjoy using the plugin by typing 'ask' followed by your question in your terminal."