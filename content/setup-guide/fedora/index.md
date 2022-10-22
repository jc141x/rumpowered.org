---
title: "Fedora Rawhide"
---

## Install packages

### dwarfs and fuse-overlayfs
```bash
sudo dnf copr enable linuxredneck/DwarFS && sudo dnf install fuse-overlayfs dwarfs
```

### graphics packages

#### Universal
```bash
sudo dnf install vulkan vulkan-loader
```

#### NVIDIA
```bash
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm && sudo dnf install xorg-x11-drv-nvidia akmod-nvidia

```
- Add `nvidia-drm.modeset=1` as a kernel parameter for the best results.

### wine-mono
```bash
sudo dnf install wine-mono
```

### other libraries
```bash
sudo dnf install libxcrypt zlib alsa-lib alsa-plugins fluidsynth pulseaudio openal
```

----------------------------

## optional packages

### gamescope
- Nvidia not supported yet

```bash
sudo dnf install gamescope
```
