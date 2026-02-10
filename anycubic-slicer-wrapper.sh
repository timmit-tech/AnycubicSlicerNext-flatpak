#!/usr/bin/env sh

# WebKit rendering fixes for white screen issues
export WEBKIT_DISABLE_DMABUF_RENDERER=1
export WEBKIT_FORCE_COMPOSITING_MODE=1
export WEBKIT_DISABLE_COMPOSITING_MODE=1

# Work-around for locale issues
export LC_ALL=C.UTF-8

# Set library path for bundled libraries
export LD_LIBRARY_PATH="/app/lib:$LD_LIBRARY_PATH"

cd /app
exec /app/bin/AnycubicSlicerNext "$@"
