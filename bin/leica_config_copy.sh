#!/system/bin/sh

log -t LeicaConfig "Script started."

SOURCE_FILE="/system/etc/leica/ziyi_pro.json"
DEST_DIR="/sdcard/Download/XiaomiCamera"
DEST_FILE="${DEST_DIR}/ziyi_pro.json"

log -t LeicaConfig "Source: $SOURCE_FILE"
log -t LeicaConfig "Destination: $DEST_FILE"

if [ ! -f "$SOURCE_FILE" ]; then
    log -t LeicaConfig "ERROR: Source file $SOURCE_FILE does not exist. Exiting."
    exit 1
fi

log -t LeicaConfig "Checking if destination file $DEST_FILE already exists."

if [ ! -f "$DEST_FILE" ]; then
    log -t LeicaConfig "File not found. Attempting to create directory $DEST_DIR"
    
    if mkdir -p "$DEST_DIR"; then
        log -t LeicaConfig "Directory created successfully."
    else
        log -t LeicaConfig "ERROR: Failed to create directory. Exiting."
        exit 1 # Exit the script
    fi
    
    log -t LeicaConfig "Attempting to copy $SOURCE_FILE to $DEST_FILE"
    
    if cp "$SOURCE_FILE" "$DEST_FILE"; then
        log -t LeicaConfig "File copied successfully."
    else
        log -t LeicaConfig "ERROR: Failed to copy file. Exiting."
        exit 1 # Exit the script
    fi
    
    log -t LeicaConfig "Attempting to chown/chmod/restorecon..."
    chown media_rw:media_rw -R "$(dirname "$DEST_DIR")"
    chmod 775 -R "$(dirname "$DEST_DIR")"
    restorecon -R "$(dirname "$DEST_DIR")"
    log -t LeicaConfig "Permissions set. Script finished."
    
else
    log -t LeicaConfig "File already exists. Script doing nothing. Exiting."
fi
