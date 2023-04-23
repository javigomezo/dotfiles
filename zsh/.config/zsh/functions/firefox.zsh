# Set firefox in wayland mode
if [ -n "${WAYLAND_DISPLAY+1}" ]; then
    export MOZ_ENABLE_WAYLAND=1
    export MOZ_USE_XINPUT2=1
fi
