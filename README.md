# 🐱 Kitty + Starship Configuration

Personal terminal setup for Kitty with a transparent futuristic theme, productive split/window keymaps, and a Starship prompt tuned for Git-heavy development.

## ✨ Features

- Transparent Kitty profile with blur, padding, hidden decorations, and JetBrainsMono Nerd Font.
- Vim-style window navigation for splits and layouts.
- Powerline-style Kitty tabs with fast tab movement and renaming.
- Starship prompt with OS, user, host, path, Git branch/status, command duration, and clear success/error prompt symbols.
- Documented keybindings in `kitty/KEYMAP.md`.

## 📦 Requirements

### Arch Linux

```sh
sudo pacman -S kitty starship ttf-jetbrains-mono-nerd
```

### Optional

- `wl-clipboard` for Wayland clipboard workflows.
- A compositor/window manager that supports blur/transparency for the best visual result.

## 📁 Layout

```text
.
├── kitty/
│   ├── kitty.conf
│   ├── theme.conf
│   ├── fullscreen.session
│   └── KEYMAP.md
├── starship.toml
└── install.sh
```

## 🚀 Install

```sh
git clone git@github.com:GenBibhu/kitty-config.git
cd kitty-config
./install.sh
```

Enable Starship in your shell if it is not already enabled:

```sh
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
```

For Bash:

```sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc
```

## ⌨️ Keymaps

The main modifier is `Ctrl+Shift`.

- `Ctrl+Shift+Enter` opens a new split in the current directory.
- `Ctrl+Shift+H/J/K/L` moves between splits.
- `Ctrl+Shift+T` creates a new tab.
- `Ctrl+Shift+F` searches scrollback.

See `kitty/KEYMAP.md` for the full keymap.

## 🔄 Update From Local Machine

After editing your live config:

```sh
cp ~/.config/kitty/kitty.conf ~/.config/kitty/theme.conf ~/.config/kitty/fullscreen.session ./kitty/
cp ~/.config/starship.toml ./starship.toml
git add .
git commit -m "Update terminal config"
git push
```
