---
title: "OpenSUSE Tumbleweed"
---

## Install packages

### dwarfs

(also available in nix package manager)

```bash
sudo zypper ar https://copr.fedorainfracloud.org/coprs/linuxredneck/DwarFS/repo/epel-9/linuxredneck-DwarFS-epel-9.repo
sudo zypper refresh
sudo zypper install dwarfs
# Solution 2: break dwarfs-0.6.1-1.el9.x86_64 by ignoring some of its dependencies
# Do you want to reject the key, or trust always? [r/a/?] (r): a
```

### fuse-overlayfs

```bash
sudo zypper install fuse-overlayfs
```

### Graphics packages

#### AMD

```bash
sudo zypper install libvulkan_radeon libvulkan_radeon-32bit
```

#### INTEL

```bash
sudo zypper install libvulkan_intel libvulkan_intel-32bit
```

#### NVIDIA

```bash
sudo zypper install libglvnd-32bit libglvnd # what other packages?
```

- Add `nvidia-drm.modeset=1` as a kernel parameter for the best results.

### wine-staging + wine-mono

```bash
sudo zypper install wine-staging wine-mono
```

### various libraries required by some games

```bash
sudo zypper install libvulkan1 vulkan-tools xwayland giflib-devel-32bit libXcomposite-devel-32bit libXinerama-devel-32bit libxslt-devel-32bit mpg123-devel-32bit mpg123-openal-32bit zlib-devel-32bit libpulse-devel-32bit giflib-devel libgphoto2-6 zlib-devel libva2 zstd aria2
```

### gstreamer (video rendering)

```bash
sudo zypper install gstreamer-plugins-base gstreamer-plugins-good gstreamer-plugins-ugly gstreamer-plugins-bad gstreamer-plugins-vaapi gstreamer-plugins-libav
# 32bit
sudo zypper install gstreamer-plugins-base-32bit gstreamer-plugins-good-32bit gstreamer-plugins-ugly-32bit gstreamer-plugins-bad-32bit gstreamer-plugins-libav-32bit
```

-------------------------------------------------------------------------------------------------------------------

### optional packages

#### gamescope
- highly recommended
- Nvidia not supported yet
- requires full vulkan support, old architectures with none or semi are not compatible

```bash
sudo zypper install opi
#when running opi, install from home:VortexAcherontic:Nightly
opi gamescope
```
