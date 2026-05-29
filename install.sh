#!/data/data/com.termux/files/usr/bin/bash

clear
set -e

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

source "$BASE_DIR/modules/logger.sh"
source "$BASE_DIR/modules/packages.sh"
source "$BASE_DIR/modules/shell.sh"
source "$BASE_DIR/modules/theme.sh"
source "$BASE_DIR/modules/fetch.sh"

main() {

    if [ -f "$HOME/.hstermux_installed" ]; then
        info "HsTermux is already installed"
        echo
        printf "[1] Reinstall
"
        printf "[2] Exit

"
        printf "Select option: "
        read -r reinstall_choice

        case "$reinstall_choice" in
            1)
                info "Starting reinstall process"
                ;;
            *)
                info "Installation cancelled"
                exit 0
                ;;
        esac
    fi

    install_packages
    setup_shell
    apply_theme
    setup_fetch

    touch "$HOME/.hstermux_installed"

    success "Installation completed"
    info "Restart Termux to apply all changes"
    echo
}

main