#!/bin/bash

# initialise the Daily system

ROOT_DIR="~"
DAILY_DIR="Daily"
INSTALLATION_DIR="$ROOT_DIR/$DAILY_DIR"
DIRECTORIES=(meetings research journal templates notes)
EDITOR="vscode" # EDITOR="codium"


if ! [ -z $1 ]; then
    INSTALLATION_DIR=$1/$DAILY_DIR
fi

if [ -d $INSTALLATION_DIR ]; then
  echo "$INSTALLATION_DIR already exists."
  exit 1;
fi

echo "Installing Daily to $INSTALLATION_DIR"
mkdir -p $INSTALLATION_DIR

for ((i=0; i<${#DIRECTORIES[@]}; i++)); do
  echo "Creating $INSTALLATION_DIR/${DIRECTORIES[i]} directotry"
  mkdir -p $INSTALLATION_DIR/${DIRECTORIES[i]}
done

## Install the tools needed

## Pandoc
echo "Installing Pandoc using sudo"
sudo apt-get install pandoc

## Codium
if [ "$EDITOR" == "codium" ]; then
  echo "Downloading keyring for VSCodium"
  wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
  echo "deb [signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg] https://download.vscodium.com/debs vscodium main" | sudo tee /etc/apt/sources.list.d/vscodium.list
  echo "Running apt update as sudo"
  sudo apt update
  echo "Installing codium using sudo"
  sudo apt install codium
fi

## VS Code
if [ "$EDITOR" == "vscode" ]; then
  echo "Downloading VS Code"
  wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64 -O vscode.deb
  echo "Installing VS Code using sudo"
  sudo apt install ./vscode.deb
fi

## Plugins

