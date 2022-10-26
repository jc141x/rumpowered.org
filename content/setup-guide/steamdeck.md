---
title: "Steam Deck"
---

- Report issues you are having to us on matrix.
- SteamOS not supported or planned to be.

## Install any Arch distro.

(We recommend EndeavourOS.)

1. Create a bootable usb drive with the distro iso. - [Guide](https://discovery.endeavouros.com/installation/create-install-media-usb-key/2021/03/)
2. Use a USB-C adapter to connect the drive to your deck.
3. Turn off your deck, hold 'Volume Down' and click the Power button, when you hear a sound let go of the volume button.
4. Select the usb efi device.
5. Follow installer steps. Pick KDE Plasma if you want to deal with least amount of issues. (online install)
6. Boot into new system and run `sudo pacman -Syyu` then reboot again.

### Add required repos.

```bash
echo '

[rumpowered]
SigLevel = Never
Server = https://repo.rumpowered.org/$arch

[jupiter]
Server = https://steamdeck-packages.steamos.cloud/archlinux-mirror/$repo/os/$arch
SigLevel = Never

[holo]
Server = https://steamdeck-packages.steamos.cloud/archlinux-mirror/$repo/os/$arch
SigLevel = Never ' | sudo tee -a /etc/pacman.conf

sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf

sudo pacman -Syyu
```

### SteamDeck Hardware drivers

```bash
sudo pacman -S jupiter/linux-neptune jupiter/linux-neptune-headers jupiter/linux-firmware-neptune jupiter/jupiter-hw-support rumpowered/sc-controller
```

### Make new kernel default.

```bash
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

Reboot and select the option with `linux neptune` using the arrow keys.

------------------------------------------------------------------------------------------------------

## Install packages

#### dwarfs and fuse-overlayfs
```bash
sudo pacman -S --needed rumpowered/dwarfs-bin fuse-overlayfs
```

#### graphics packages
```bash
sudo pacman -S --needed lib32-vulkan-icd-loader vulkan-icd-loader lib32-vulkan-radeon vulkan-radeon gamescope
```

#### wine-staging + wine-mono
```bash
sudo pacman -S --needed wine-staging wine-mono
```

#### various libraries required by some games
```bash
sudo pacman -S --needed lib32-giflib lib32-gnutls lib32-libxcomposite lib32-libxinerama lib32-libxslt lib32-mpg123 lib32-v4l-utils lib32-alsa-lib lib32-alsa-plugins lib32-libpulse lib32-openal lib32-zlib giflib libgphoto2 libxcrypt-compat zlib gst-plugins-base gst-plugins-good gst-plugins-ugly gst-plugins-bad gstreamer-vaapi gst-libav
```

### post-setup
- On KDE Plasma, you might need to go into settings and set the correct screen position. On other DE's you might be stuck with no such options.
