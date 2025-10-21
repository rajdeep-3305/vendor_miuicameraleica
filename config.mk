VENDOR_PATH := vendor/MiuiCameraLeica

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/etc,system/etc)  \
	$(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/priv-app/MiuiCameraLeica/lib/arm64,system/priv-app/MiuiCameraLeica/lib/arm64) \
        $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/priv-app/MiuiExtraPhoto/lib/arm64,system/priv-app/MiuiExtraPhoto/lib/arm64) \
        $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/lib64,system/lib64) \
        $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/vendor/lib64,system/vendor/lib64)

PRODUCT_PACKAGES += \
    MiuiCameraLeica \
    MiuiExtraPhoto \
    MiuiGalleryEditor
