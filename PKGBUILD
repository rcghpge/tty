# Maintainer: LnOS Development Team <lugnutsclub@proton.me>
pkgname=lnos-tty-essentials
pkgver=1.0.0
pkgrel=8
pkgdesc="Essential CLI tools, editors, and minimal KDE Plasma Wayland for LnOS Arch Edition."
arch=('x86_64' 'aarch64')
url="https://github.com/lugnuts-at-uta/lnos"
license=('Apache-2.0')
depends=(
  'btop' 'tldr' 'fastfetch' 'bash' 'emacs' 'vim' 'neovim' 'texinfo'
  'plasma-desktop' 'plasma-wayland-protocols' 'kwin' 'sddm' 'bat' 
  'qt6-wayland' 'layer-shell-qt' 'xorg-xwayland' 'konsole' 'lynx'
  'pipewire' 'pipewire-alsa' 'pipewire-pulse' 'pipewire-audio'
  'wireplumber' 'plasma-pa' 'sof-firmware' 'spectacle' 'gwenview'
  'kinfocenter' 'bluez' 'bluez-utils'
)
optdepends=(
  'plasma-integration: Qt application integration'
)
source=(
  bashrc
  sddm-wayland.conf
)
sha256sums=('SKIP' 'SKIP')

package() {
  # CLI essentials
  mkdir -p "$pkgdir/etc/skel"
  install -Dm644 bashrc "$pkgdir/usr/share/lnos-tty-essentials/.bashrc"
  
  # SDDM Wayland config for Plasma
  install -Dm644 sddm-wayland.conf "$pkgdir/etc/sddm.conf.d/10-wayland.conf"
}

post_install() {
  systemctl enable sddm.service
  systemctl enable bluetooth.service
  
  cat << EOF

LnOS Arch Edition TTY Essentials 

CLI Tools:
- btop: System resource monitoring
- tldr: Beginner-friendly command examples  
- fastfetch: System info at login
- emacs/neovim/vim: Powerful text editors
- texinfo: 'info' command documentation

Desktop Environment:
- plasma-desktop + plasma-wayland-session: Minimal KDE Plasma on Wayland
- sddm: Display manager (TTY1 auto-launches)
- kwin_wayland: Wayland compositor

TTY Usage:
- Ctrl+Alt+F1: SDDM login (Plasma Wayland default)
- Ctrl+Alt+F2-F6: TTY sessions
- Ctrl+Alt+F7: Return to Plasma
- systemctl restart sddm: Restart Plasma from TTY

CLI Tips:
- tldr <command>    : Example-based help
- info <command>    : Detailed documentation
- <command> --help  : Usage info
- fastfetch         : System overview

Wayland Verification:
- echo \$XDG_SESSION_TYPE  (should show "wayland")

Happy coding and desktopping on LnOS Arch Edition!

EOF
}

post_upgrade() {
  post_install
}

post_remove() {
  systemctl disable sddm.service
  
  cat << EOF

LnOS Arch Edition TTY Essentials removed.

- CLI tools uninstalled (btop, tldr, fastfetch, editors)
- SDDM + Plasma Wayland removed
- ~/.bashrc remains unchanged
- System returns to TTY console

Reinstall for CLI + Plasma Wayland restoration.

EOF
}
