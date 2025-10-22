VENDOR_PATH := vendor/MiuiCameraLeica

# --- Proprietary File Copying ---
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/etc,system/etc) \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/lib64,system/lib64) \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/vendor/lib64,system/vendor/lib64) \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/priv-app/MiuiCameraLeica/lib/arm64,system/priv-app/MiuiCameraLeica/lib/arm64) \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/priv-app/MiuiExtraPhoto/lib/arm64,system/priv-app/MiuiExtraPhoto/lib/arm64) \
    $(VENDOR_PATH)/init/init.leica.rc:system/etc/init/init.leica.rc \
    $(VENDOR_PATH)/bin/leica_config_copy.sh:system/bin/leica_config_copy.sh \
    $(VENDOR_PATH)/configs/ziyi_pro.json:system/etc/leica/ziyi_pro.json

# --- Prebuilt Application Packages ---
PRODUCT_PACKAGES += \
    MiuiCameraLeica \
    MiuiExtraPhoto \
    MiuiGalleryEditor

# --- System Property Files ---
# This line includes our new, clean properties file.
PRODUCT_PROPERTY_FILES += \
    $(VENDOR_PATH)/leica.prop

