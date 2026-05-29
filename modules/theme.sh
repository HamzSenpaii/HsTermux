#!/data/data/com.termux/files/usr/bin/bash

apply_theme() {
    info "Preparing Termux directory"

    mkdir -p "$HOME/.termux"
    mkdir -p "$HOME/.oh-my-zsh/custom/themes"

    success "Directories prepared"

    info "Applying terminal font"

    cp \
        "$BASE_DIR/assets/fonts/firacode-nerd-font-bold.ttf" \
        "$HOME/.termux/font.ttf"

    success "Terminal font applied"

    info "Applying terminal colors"

    cp \
        "$BASE_DIR/assets/colors/nekonako-djancoeg.colors" \
        "$HOME/.termux/colors.properties"

    success "Terminal colors applied"

    info "Applying ZSH theme"

    cp \
        "$BASE_DIR/assets/themes/osx2.zsh-theme" \
        "$HOME/.oh-my-zsh/custom/themes/"

    success "ZSH theme applied"

    info "Reloading Termux settings"

    termux-reload-settings >/dev/null 2>&1 || true

    success "Termux settings reloaded"
}