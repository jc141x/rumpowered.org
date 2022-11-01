---
title: "Setup Guide"

layout: single

cascade:
  showDate: false
  showPagination: false
---

{{< lead >}}
Everything you need to do before playing our releases.
{{< /lead >}}

_Haven't installed GNU/Linux yet ? check out [EndeavourOS](https://discovery.endeavouros.com/installation/create-install-media-usb-key/2021/03/)_

## Supported Distributions

|                                 | Notes                                                                |
|---------------------------------|----------------------------------------------------------------------|
| [Arch Linux](archlinux)         | also applies to EndeavourOS (recommended), Arco, Artix, Manjaro etc. |
| [Debian Unstable](debian)       | also applies Sparky Rolling, Siduction, Nitrux                       |
| [Fedora Rawhide](fedora)        |                                                                      |
| [openSUSE Tumbleweed](opensuse) |                                                                      |


## Special Hardware Support

|                                 | Notes                                                                |
|---------------------------------|----------------------------------------------------------------------|
| [Steam Deck](steamdeck)         | TL;DR: Replace SteamOS with any Arch Based Distribution              |


## Unsupported distributions

Our Releases might work but we can't promise anything and don't want to waste time troubleshooting, for setup look at what most closely resembles your distro and use common sense. For example, if you use apt as your package manager you go for debian.

|                                  | Reason                                                                                                    |
|--------------------------------- |-----------------------------------------------------------------------------------------------------------|
| Debian Stable                    | Outdated Packages                                                                                         |
| *buntu (and distros based on it) | Malware, Outdated Packages (also applies to Mint, Elementary OS, Zorin OS, POP! OS, LXLE, KDE Neon, etc.) |
| SteamOS                          | Malware, Read-only file system, Lack of required packages                                                 |
| Fedora Silverblue                | Read-only file system                                                                                     |


## Notes
- The GPU/APU must have vulkan support otherwise hardly any releases with wine will run.
- The dwarfs mounting system requires modern speed standards from storing devices as well as RAM.
- The testing is done on Arch or EndeavourOS with EXT4, BTRFS or XFS filesystems.
