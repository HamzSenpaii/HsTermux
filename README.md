# HsTermux
**HsTermux** adalah script yang digunakan untuk mengubah tampilan termux secara simple dan mudah

## Installation Script

<details open>
  <summary>
    <strong>Installation HsTermux</strong>
  </summary>
  <br>
    
- Update Repository & Upgrade Package
    
```bash
pkg update && pkg upgrade -y
```

- Instalation Git For Cloning Repository

```bash
pkg install git -y
```

- Clone Or Download Repository

```bash
git clone https://github.com/HamzSenpaii/HsTermux.git
```

- Move Folder

```bash
cd HsTermux
```

- Give Permission

```bash
chmod +x install.sh
```

- Execute Installer

```bash
./install.sh
```
</details>

## Project Structure

```text
HsTermux/
├── install.sh
├── README.md
│
├── modules/
│   ├── logger.sh
│   ├── packages.sh
│   ├── shell.sh
│   ├── theme.sh
│   └── fetch.sh
│
├── assets/
│   ├── fonts/
│   │   └── firacode-nerd-font-bold.ttf
│   │
│   ├── colors/
│   │   └── nekonako-djancoeg.colors
│   │
│   ├── themes/
│   │   └── osx2.zsh-theme
│   │
│   └── fetch/
│       └── hsfetch
│
└── configs/
    └── zshrc
```

## Requirements

- Termux
- Internet connection
- Storage permission

## Tech Stack
- Shell

## Credits

Special thanks to all open-source assets, themes, and tools used in this project.

## Author

Created with ❤️ by **HamzSenpaii**

GitHub:
https://github.com/HamzSenpaii

---

<p align="center">© 2026 HsTermux – All rights reserved.</p>