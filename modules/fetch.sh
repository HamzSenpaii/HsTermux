#!/data/data/com.termux/files/usr/bin/bash

setup_fetch() {
    info "Installing hsfetch"

    mkdir -p "$HOME/.local/bin"

    cp \
        "$BASE_DIR/assets/fetch/hsfetch" \
        "$HOME/.local/bin/hsfetch"

    chmod +x "$HOME/.local/bin/hsfetch"

    success "hsfetch installed"
}