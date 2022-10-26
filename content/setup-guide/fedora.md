---
title: "Fedora Rawhide"
---

## Install packages

### dwarfs and fuse-overlayfs
```bash
sudo dnf copr enable jc141/DwarFS && sudo dnf install fuse-overlayfs dwarfs
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
Isolates game from system display server, no desktop res changing when in use. As well as forcing games into fullscreen and scaling when necessary. Can provide AMD FidelityFX Super Resolution or NVIDIA Image Scaling support.

```sh
sudo dnf install gamescope
```

- NVIDIA drivers may have some issues with this.
- Requires **full** Vulkan support. (old architectures with none or semi are not compatible)
- May cause failure to run from first try in certain cases.
- Is not always used by scripts, testing is done to confirm that it is compatible.
