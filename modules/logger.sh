#!/data/data/com.termux/files/usr/bin/bash

GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
BLUE='\033[1;34m'
NC='\033[0m'

info() {
    printf "${YELLOW}[HsTermux]${NC} %s\n" "$1"
}

success() {
    printf "${GREEN}[HsTermux]${NC} %s\n" "$1"
}

error() {
    printf "${RED}[HsTermux]${NC} %s\n" "$1"
}