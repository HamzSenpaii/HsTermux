#!/data/data/com.termux/files/usr/bin/bash

install_packages() {
    info "Updating package repository"

    pkg update -y >/dev/null 2>&1 || true
    pkg upgrade -y >/dev/null 2>&1 || true

    success "Repository updated"

    info "Installing required packages"

    packages=(
        zsh
        git
        curl
        wget
    )

    for package in "${packages[@]}"; do
        if pkg install -y "$package" >/dev/null 2>&1; then
            success "$package installed"
        else
            error "Failed to install $package"
        fi
    done
}