#!/data/data/com.termux/files/usr/bin/bash

clear
set -e

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

source "$BASE_DIR/modules/logger.sh"

if [ ! -f "$HOME/.hstermux_installed" ]; then
    error "HsTermux is not installed"
    exit 1
fi

info "HsTermux uninstaller"
printf "Are you sure you want to uninstall HsTermux? [y/N]: "

read -r confirm

case "$confirm" in
    [Yy])
        info "Starting HsTermux uninstallation"
        ;;
    *)
        info "Uninstallation cancelled"
        exit 0
        ;;
esac

info "Removing hsfetch"

rm -f "$HOME/.local/bin/hsfetch"

success "hsfetch removed"

info "Removing terminal font"

rm -f "$HOME/.termux/font.ttf"

success "Terminal font removed"

info "Removing terminal colors"

rm -f "$HOME/.termux/colors.properties"

success "Terminal colors removed"

info "Removing ZSH theme"

rm -f "$HOME/.oh-my-zsh/custom/themes/osx2.zsh-theme"

success "ZSH theme removed"

if [ -f "$HOME/.zshrc.bak" ]; then
    info "Restoring old ZSH configuration"

    rm -f "$HOME/.zshrc"
    mv "$HOME/.zshrc.bak" "$HOME/.zshrc"

    success "Old ZSH configuration restored"
else
    info "No backup configuration found"

    rm -f "$HOME/.zshrc"
fi

if [ -d "$HOME/.oh-my-zsh" ]; then
    info "Removing Oh My Zsh"

    rm -rf "$HOME/.oh-my-zsh"

    success "Oh My Zsh removed"
fi

info "Removing installation marker"

rm -f "$HOME/.hstermux_installed"

success "Installation marker removed"

info "Reloading Termux settings"

termux-reload-settings >/dev/null 2>&1 || true

success "Termux settings reloaded"

success "HsTermux successfully uninstalled"
info "Restart Termux to apply changes"