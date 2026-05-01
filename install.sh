#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
timestamp="$(date +%Y%m%d-%H%M%S)"

mkdir -p "$HOME/.config"

if [ -d "$HOME/.config/kitty" ]; then
  mv "$HOME/.config/kitty" "$HOME/.config/kitty.bak-$timestamp"
fi

if [ -f "$HOME/.config/starship.toml" ]; then
  cp "$HOME/.config/starship.toml" "$HOME/.config/starship.toml.bak-$timestamp"
fi

mkdir -p "$HOME/.config/kitty"
cp -a "$repo_dir/kitty/." "$HOME/.config/kitty/"
cp "$repo_dir/starship.toml" "$HOME/.config/starship.toml"

echo "Installed Kitty config to $HOME/.config/kitty"
echo "Installed Starship config to $HOME/.config/starship.toml"
echo "Existing config backups use timestamp: $timestamp"
