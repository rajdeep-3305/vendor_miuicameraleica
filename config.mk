VENDOR_PATH := vendor/MiuiCameraLeica

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/priv-app/MiuiCameraLeica,$(TARGET_COPY_OUT_SYSTEM)/priv-app/MiuiCameraLeica) \
    \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/priv-app/MiuiExtraPhoto,$(TARGET_COPY_OUT_SYSTEM)/priv-app/MiuiExtraPhoto) \
    \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/priv-app/MiuiGalleryEditor,$(TARGET_COPY_OUT_SYSTEM)/priv-app/MiuiGalleryEditor) \
    \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/lib64,$(TARGET_COPY_OUT_SYSTEM)/lib64) \
    \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/vendor/lib64,$(TARGET_COPY_OUT_VENDOR)/lib64) \
    \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/etc,$(TARGET_COPY_OUT_SYSTEM)/etc) \
    \
    $(VENDOR_PATH)/init/init.leica.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/init.leica.rc \
    $(VENDOR_PATH)/bin/leica_config_copy.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/leica_config_copy.sh \
    $(VENDOR_PATH)/configs/ziyi_pro.json:$(TARGET_COPY_OUT_SYSTEM)/etc/leica/ziyi_pro.json

PRODUCT_PACKAGES += \
    MiuiCameraLeica \
    MiuiExtraPhoto \
    MiuiGalleryEditor

# --- System Property Overrides ---
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.lens.oem_camera_package=com.android.camera \
    vendor.camera.aux.packagelist=com.android.camera \
    persist.vendor.camera.privapp.list=com.android.camera \
    ro.product.system.manufacturer=Xiaomi \
    ro.product.manufacturer=Xiaomi \
    ro.build.characteristics=default \
    ro.control_privapp_permissions=log \
    ro.product.mod_device=ziyi_pro_global \
    ro.product.device=ziyi_pro \
    ro.product.system.device=ziyi_pro

