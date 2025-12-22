# pkgbuild

LnOS Arch Edition `tty` desktop environment essentials

---

Example usage:
```bash
git clone https://github.com/rcghpge/tty.git
cd tty
makepkg -si

# For web browser recommend install librewolf with yay or install your preferred web browser
cd ~/Downloads   # or preferred working directory
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Install librewolf with yay
yay -S librewolf-bin

# Check if SDDM is enabled
systemctl is-enabled sddm

# Launch a KDE Plasma session from the terminal
sudo systemctl start sddm

# Disable SDDM auto-start at boot time if causing issues
sudo systemctl disable sddm.service
```

---

