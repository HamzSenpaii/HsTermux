#!/data/data/com.termux/files/usr/bin/bash

setup_shell() {
    info "Backing up old ZSH configuration"

    if [ -f "$HOME/.zshrc" ]; then
        cp "$HOME/.zshrc" "$HOME/.zshrc.bak"
        success "Old .zshrc backed up"
    else
        info "No previous .zshrc found"
    fi


    info "Installing Oh My Zsh"

    if [ ! -d "$HOME/.oh-my-zsh" ]; then
        git clone --depth=1 \
            https://github.com/ohmyzsh/ohmyzsh.git \
            "$HOME/.oh-my-zsh" \
            >/dev/null 2>&1

        success "Oh My Zsh installed"
    else
        success "Oh My Zsh already installed"
    fi

    info "Applying ZSH configuration"

    cp "$BASE_DIR/configs/zshrc" "$HOME/.zshrc"

    success "ZSH configuration applied"

    info "Changing default shell to ZSH"

    chsh -s zsh >/dev/null 2>&1 || true

    success "Default shell changed to ZSH"

    info "Hiding default Termux banner"

    touch "$HOME/.hushlogin"

    success "Default banner hidden"
}