# Maintainer: LnOS Development Team <lugnutsclub@proton.me>
pkgname=lnos-tty-essentials
pkgver=1.0.0
pkgrel=7
pkgdesc="Essential CLI tools and editors for LnOS Arch Edition TTY profile (btop, tldr, fastfetch, emacs, neovim, texinfo)"
arch=('x86_64' 'aarch64')
url="https://github.com/lnos-project/lnos-tty-essentials" # tbd
license=('MIT')
depends=('btop' 'tldr' 'fastfetch' 'bash' 'emacs' 'neovim' 'texinfo')
source=(bashrc)
sha256sums=('SKIP') # tbd

package() {
  mkdir -p "$pkgdir/etc/skel"
  install -Dm644 bashrc "$pkgdir/etc/skel/.bashrc"
}

post_install() {
  cat << EOF

LnOS Arch Edition TTY Essentials

This package includes:
- btop for monitoring system resources
- tldr for beginner-friendly command examples
- fastfetch displays system info at login
- emacs and neovim as powerful text editors
- texinfo provides 'info' command documentation

Tips for getting started:
- tldr <command>    : Simplified, example-based help
- info <command>    : Detailed command documentation  
- <command> --help  : Usage information and options
- <command> --version : Check installed version

Happy coding on LnOS Arch Edition!

EOF
}

post_upgrade() {
  post_install
}

post_remove() {
  cat << EOF

LnOS Arch Edition TTY Essentials has been removed.

Your existing ~/.bashrc will remain unchanged.
New users will get the default bashrc unless this package is reinstalled.

EOF
}
