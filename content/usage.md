---
title: "Usage"

showDate: false
showPagination: false
---

## Running
```bash
cd "path to extracted game"
bash start.*.sh # the '*' depends on the game (ex: w = wine)
```

### Launch variables
```bash
DBG=1 # for enabling terminal output from the game binary and other software ran.
GAMESCOPE=0 # for disabling gamescope.
WINEFSYNC=0 # for disabling fsync.
```

### Running with launch variables
```bash
# Enable terminal output, disable gamescope
DBG=1 GAMESCOPE=0 bash start.*.sh
```

- game can also be ran directly from file manager by right clicking on start.x.sh and giving executable permission.
  - May result in failure to boot sometimes. Best to run from terminal.

## settings.sh commands
```bash
# extracts groot.dwarfs to groot directory if it is empty
bash settings.sh extract-dwarfs

# unmounts groot
bash settings.sh unmount-dwarfs

# mounts groot.dwarfs to groot-mnt and overlay to groot
bash settings.sh mount-dwarfs

# deletes dwarfs image which contains the game files
bash settings.sh delete-dwarfs

# compresses extracted game files to groot.dwarfs
bash settings.sh compress-to-dwarfs
```

## modding on dwarfs

- Addding mods is supported through groot-rw directory. Before mounting, any files included in it will go above the mounted image and override any of the files. The path required for the mod may need to be created manually if its not directly in root next to the game binary.

- Games which are extracted do not require this method.

