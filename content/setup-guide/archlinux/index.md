---
title: "Arch Linux"
---

{{< lead >}}
Also applies to EndeavourOS, Artix, ArcoLinux, Manjaro etc.
{{< /lead >}}

## Enable multilib repo
```bash
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf
```

## Add rumpowered repo
```bash
echo '

[rumpowered]
Server = https://jc141x.github.io/rumpowered-packages/$arch
Server = https://repo.rumpowered.org/$arch ' | sudo tee -a /etc/pacman.conf

sudo pacman-key --recv-keys cc7a2968b28a04b3
sudo pacman-key --lsign-key cc7a2968b28a04b3

sudo pacman -Syyu
```

## Install Packages

### dwarfs and fuse-overlayfs
```bash
sudo pacman -S --needed rumpowered/dwarfs-bin fuse-overlayfs
```

### Vulkan API
```bash
sudo pacman -S --needed lib32-vulkan-icd-loader vulkan-icd-loader
```

### GPU Drivers

#### AMD
```bash
sudo pacman -S --needed lib32-vulkan-radeon vulkan-radeon
```

- Make sure you remove `amdvlk` with `sudo pacman -R amdvlk` to avoid issues.

#### INTEL

```bash
sudo pacman -S --needed lib32-vulkan-intel vulkan-intel
```

#### NVIDIA

```bash
sudo pacman -S --needed lib32-libglvnd lib32-nvidia-utils libglvnd nvidia
```

- Add `nvidia-drm.modeset=1` as a kernel parameter for the best results.

### wine-staging + wine-mono
```bash
sudo pacman -S --needed wine-staging wine-mono
```
- wine-staging-tkg can be used instead of wine-staging, to the user's choice.

#### various libraries required by some games
```bash
sudo pacman -S --needed lib32-giflib lib32-gnutls lib32-libxcomposite lib32-libxinerama lib32-libxslt lib32-mpg123 lib32-v4l-utils lib32-alsa-lib lib32-alsa-plugins lib32-libpulse lib32-openal lib32-zlib giflib libgphoto2 libxcrypt-compat zlib gst-plugins-base gst-plugins-good gst-plugins-ugly gst-plugins-bad gstreamer-vaapi gst-libav
```

-------------------------------------------------------------------------------------------------------------------

### optional packages

#### gamescope
Isolates game from system display server, no desktop res changing when in use. As well as forcing games into fullscreen and scaling when necessary. Can provide AMD FidelityFX Super Resolution or NVIDIA Image Scaling support.

```bash
sudo pacman -S --needed gamescope
```

- NVIDIA drivers may have some issues with this.
- Requires **full** Vulkan support. (old architectures with none or semi are not compatible)
- May cause failure to run from first try in certain cases.


#### bindtointerface - block non-LAN network activity by default
```
sudo pacman -S --needed rumpowered/bindtointerface
```
