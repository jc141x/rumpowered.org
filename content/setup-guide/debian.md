---
title: "Debian Unstable"
---

{{< lead >}}
Also applies to Sparky Rolling, Siduction, Nitrux which are rolling by default.
{{< /lead >}}

{{< alert >}}
Debian does not provide any package for wine-mono, missing it can cause crashes in specific games. It is not available on MPR either.

This issue will not be fixed until the package becomes available.

Alternatively, install mono when asked by wine when running our releases.
{{< /alert >}}

## Switch Debian Stable to Rolling.
1. Edit /etc/apt/sources.list:
```bash
sudo nano /etc/apt/sources.list
```

2. Edit sources.list to only use these repos:
```text
deb http://deb.debian.org/debian/ sid main contrib non-free
deb-src http://deb.debian.org/debian/ sid main
```

3. Save the file and update your system to Sid (This will reboot your system):
```bash
sudo apt update && sudo apt full-upgrade && sudo reboot
```

- Optionally you can install `apt-listbugs` & `apt-listchanges` to read the bugs and see if any of them will break your distro.

## MPR + MPR helper
```bash
wget -qO - 'https://proget.hunterwittenborn.com/debian-feeds/makedeb.pub' | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/makedeb-archive-keyring.gpg &> /dev/null && echo 'deb [signed-by=/usr/share/keyrings/makedeb-archive-keyring.gpg arch=all] https://proget.hunterwittenborn.com/ makedeb main' | \
sudo tee /etc/apt/sources.list.d/makedeb.list && sudo apt update && sudo apt install makedeb git && git clone https://mpr.hunterwittenborn.com/una-bin.git && cd una-bin && makedeb -si
```

## Install packages

### dwarfs and overlayfs
```bash
git clone https://mpr.makedeb.org/dwarfs-bin.git && cd dwarfs-bin && makedeb -si
sudo apt install fuse-overlayfs
```

### GPU Drivers

#### Universal
```bash
sudo apt install libvulkan1 vulkan-tools
sudo apt remove amdvlk
```

#### NVIDIA
```bash
sudo add-apt-repository ppa:oibaf/graphics-drivers
sudo apt install nvidia-driver-510 nvidia-settings libvulkan1 vulkan-tools
```
- Add `nvidia-drm.modeset=1` as a kernel parameter for the best results.


### gstreamer
```bash
sudo apt install gstreamer1.0-plugins-bad gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly gstreamer1.0-vaapi libav-tools
```

### multilib libraries
```bash
sudo dpkg --add-architecture i386
sudo apt install libva2:i386 alsa-utils:i386 libopenal1:i386 libpulse0:i386
```

### other libraries
```bash
sudo apt install libva2 giflib-tools libgphoto2-6 libxcrypt-source
```

------------------------------------------

## optional packages

### gamescope
Isolates game from system display server, no desktop res changing when in use. As well as forcing games into fullscreen and scaling when necessary. Can provide AMD FidelityFX Super Resolution or NVIDIA Image Scaling support.

```bash
sudo apt install gamescope
```

- NVIDIA drivers may have some issues with this.
- Requires **full** Vulkan support. (old architectures with none or semi are not compatible)
- May cause failure to run from first try in certain cases.
- Is not always used by scripts, testing is done to confirm that it is compatible.

