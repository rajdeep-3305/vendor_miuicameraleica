#!/system/bin/sh
# This script runs once on first boot to copy the Leica config.

SOURCE_FILE="/system/etc/leica/ziyi_pro.json"
DEST_DIR="/sdcard/Download/XiaomiCamera"
DEST_FILE="${DEST_DIR}/ziyi_pro.json"

# Only run if the config file doesn't already exist
if [ ! -f "$DEST_FILE" ]; then
    # Create the directory
    mkdir -p "$DEST_DIR"

    # Copy the file
    cp "$SOURCE_FILE" "$DEST_FILE"

    # Set the correct permissions and ownership for the user-facing directories
    # Use the parent directory to ensure the whole tree is correct
    chown media_rw:media_rw -R "$(dirname "$DEST_DIR")"
    chmod 775 -R "$(dirname "$DEST_DIR")"
    restorecon -R "$(dirname "$DEST_DIR")"
fi
