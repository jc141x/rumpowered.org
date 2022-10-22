#!/bin/bash

# Source: https://gitlab.com/gabmus/hugo-ficurinia/-/blob/master/generate_icons.sh

if [ -z "$1" ]; then
    echo "Usage: $0 path/to/icon.svg"
    exit 1
fi
FNAME=$1
if [ ! -f "$FNAME" ]; then
    echo "Error: file $FNAME doesn't exist"
    exit 1
fi

DESTDIR="$(dirname "$FNAME")"
convert -density 1200 -background none -resize  16x16  "$FNAME" "$DESTDIR/favicon.ico"
convert -density 1200 -background none -resize  16x16  "$FNAME" "$DESTDIR/favicon-16x16.png"
convert -density 1200 -background none -resize  32x32  "$FNAME" "$DESTDIR/favicon-32x32.png"
convert -density 1200 -background none -resize 180x180 "$FNAME" "$DESTDIR/apple-touch-icon.png"
convert -density 1200 -background none -resize 192x192 "$FNAME" "$DESTDIR/android-chrome-192x192.png"
convert -density 1200 -background none -resize 512x512 "$FNAME" "$DESTDIR/android-chrome-512x512.png"
