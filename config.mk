VENDOR_PATH := vendor/MiuiCameraLeica

PRODUCT_COPY_FILES += \
    # Config files from the etc folder
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/etc,system/etc) \
    \
    $(VENDOR_PATH)/system/etc/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml \
    \
    # The files needed for the auto-config copy script
    $(VENDOR_PATH)/configs/ziyi_pro.json:system/etc/leica/ziyi_pro.json \
    $(VENDOR_PATH)/init/init.leica.rc:system/etc/init/init.leica.rc \
    $(VENDOR_PATH)/bin/leica_config_copy.sh:system/bin/leica_config_copy.sh

PRODUCT_PACKAGES += \
    # APKs
    MiuiCameraLeica \
    MiuiExtraPhoto \
    MiuiGalleryEditor \
    \
    # Libraries from system/priv-app/MiuiCameraLeica/lib/arm64
    libarcsoft_single_chart_calibration \
    libijksdl \
    libijkplayer \
    libDocumentProcess \
    libc++_shared \
    libgui_shim_miuicamera_app \
    libsnpe_dsp_domains_v2 \
    libsnpe_dsp_skel \
    libsymphony-cpu \
    libbarhopper_v3 \
    libAIPOSE \
    libyuv_leica_app \
    libcamera_mianode_jni.xiaomi_app \
    libYuvWatermark \
    libsnpe_dsp_v66_domains_v2_skel \
    libsnpe_dsp_v65_domains_v2_skel \
    libion \
    libijkffmpeg \
    libmicampostproc_client_app \
    libcamera_algoup_jni.xiaomi_app \
    libcamera_yuv_jni \
    libmiuiblursdk_leica_app \
    libc++ \
    libjpeg \
    \
    # Libraries from system/priv-app/MiuiExtraPhoto/lib/arm64
    libmotion_photo_c++_shared \
    libxcrash_dumper \
    librefocus_mibokeh \
    libselection \
    librefocus \
    libxcrash \
    libyuv_extra_app \
    libmotion_photo \
    libwa_refocus_extraphoto \
    libmiuiblursdk_extra_app \
    \
    # Libraries from system/lib64
    libcamera_ispinterface_jni.xiaomi \
    libgui_shim_miuicamera \
    libcamera_mianode_jni.xiaomi_system \
    libmicampostproc_client \
    libcamera_algoup_jni.xiaomi_system \
    libmegvii_bokeh_jni \
    \
    # Libraries from system/vendor/lib64
    libmorpho_Lowlight \
    libcamera_mianode_jni.xiaomi_vendor \
    libmialgoengine \
    libmicampostproc_client_vendor \
    libcamera_algoup_jni.xiaomi_vendor

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
