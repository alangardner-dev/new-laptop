#!/bin/bash

# === CONFIGURATION ===
PERSONAL_EMAIL=""
WORK_EMAIL=""

PERSONAL_USERNAME=""
WORK_USERNAME=""

# Check that all required variables are set
if [[ -z "$PERSONAL_EMAIL" || -z "$WORK_EMAIL" || -z "$PERSONAL_USERNAME" || -z "$WORK_USERNAME" ]]; then
  echo "❌ ERROR: Please set values for PERSONAL_EMAIL, WORK_EMAIL, PERSONAL_USERNAME, and WORK_USERNAME in this script before running."
  exit 1
fi

PERSONAL_KEY=~/.ssh/id_ed25519-personal
WORK_KEY=~/.ssh/id_ed25519-work

# === GENERATE KEYS ===
generate_key() {
  local key_path=$1
  local email=$2

  if [ ! -f "$key_path" ]; then
    ssh-keygen -t ed25519 -C "$email" -f "$key_path" -N ""
    echo "🔐 SSH key generated at: $key_path"
  else
    echo "✅ SSH key already exists: $key_path"
  fi

  ssh-add --apple-use-keychain "$key_path"
}

generate_key "$PERSONAL_KEY" "$PERSONAL_EMAIL"
generate_key "$WORK_KEY" "$WORK_EMAIL"

# === WRITE SSH CONFIG ===
CONFIG_FILE=~/.ssh/config

echo "🔧 Updating SSH config..."

{
  echo ""
  echo "# Personal GitHub account"
  echo "Host github-personal"
  echo "  HostName github.com"
  echo "  User git"
  echo "  IdentityFile $PERSONAL_KEY"
  echo "  UseKeychain yes"
  echo "  AddKeysToAgent yes"
  echo "  IdentitiesOnly yes"
  echo ""
  echo "# Work GitHub account (Daily Cartoonist)"
  echo "Host github-dailycartoonist"
  echo "  HostName github.com"
  echo "  User git"
  echo "  IdentityFile $WORK_KEY"
  echo "  UseKeychain yes"
  echo "  AddKeysToAgent yes"
  echo "  IdentitiesOnly yes"
} >> "$CONFIG_FILE"

echo "✅ SSH config updated at $CONFIG_FILE"

# === OPTIONAL: Update Git Remote for Current Repo ===
read -p "Do you want to set the Git remote for this repo? (y/n): " set_remote
if [[ "$set_remote" =~ ^[Yy]$ ]]; then
  read -p "Is this a personal repo? (y/n): " is_personal
  if [[ "$is_personal" =~ ^[Yy]$ ]]; then
    HOST_ALIAS="github-personal"
    USERNAME="$PERSONAL_USERNAME"
  else
    HOST_ALIAS="github-dailycartoonist"
    USERNAME="$WORK_USERNAME"
  fi

  read -p "Enter the GitHub repository name (e.g., my-repo): " REPO_NAME
  git remote set-url origin git@${HOST_ALIAS}:${USERNAME}/${REPO_NAME}.git
  echo "✅ Remote updated to use: git@${HOST_ALIAS}:${USERNAME}/${REPO_NAME}.git"
fi

echo "🎉 Setup complete!"
