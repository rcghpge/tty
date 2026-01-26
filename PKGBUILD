# Maintainer: LnOS Development Team <lugnutsclub@proton.me>
pkgname=lnos-tty
pkgver=1.1.0
pkgrel=9
pkgdesc="Essential CLI tools, editors, and minimal KDE Plasma Wayland for LnOS Arch Edition."
arch=('x86_64' 'aarch64')
url="https://github.com/rcghpge/tty"
license=('Apache-2.0')
depends=(
  'btop' 'tldr' 'fastfetch' 'bash' 'emacs' 'vim' 'neovim' 'texinfo'
  'plasma-desktop' 'plasma-wayland-protocols' 'kwin' 'sddm' 'sddm-kcm' 
  'qt6-wayland' 'layer-shell-qt' 'xorg-xwayland' 'konsole' 'lynx' 'glycin'
  'pipewire' 'pipewire-alsa' 'alsa-utils' 'pipewire-pulse' 'pipewire-audio'
  'wireplumber' 'plasma-pa' 'sof-firmware' 'spectacle' 'gwenview'
  'kinfocenter' 'bluez' 'bluez-utils' 'bluedevil' 'bat' 'kscreen'
  'bubblewrap-suid' 'xdg-desktop-portal-kde' 'qemu' 'libvirt'
  'virt-manager' 'dnsmasq' 'ebtables' 'iptables-nft'
)
optdepends=(
  'plasma-integration: Qt application integration'
)
source=(
  bashrc
  sddm-wayland.conf
)
sha256sums=('f6d4fc41d8d3259f23f60bfe1d4952954061916b1ce3b0c8fdf3cd55852e90e6'
            '88b64066085c4d60a4c80327e662bb90c104080a81059955808917b87dc003b2')

package() {
  # CLI essentials
  mkdir -p "$pkgdir/etc/skel"
  install -Dm644 bashrc "$pkgdir/usr/share/lnos-tty/.bashrc"
  
  # SDDM Wayland config for Plasma
  install -Dm644 sddm-wayland.conf "$pkgdir/etc/sddm.conf.d/10-wayland.conf"
}

post_install() {
  systemctl enable sddm.service
  systemctl enable bluetooth.service
  
  cat << EOF

LnOS Arch Edition tty Essentials 

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

tty Usage:
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
