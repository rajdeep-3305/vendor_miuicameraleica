PRODUCT_PACKAGES += \
    MiuiCameraLeica \
    MiuiExtraPhoto \
    MiuiGalleryEditor \
    miuicamera-permissions.xml \
    android.hardware.camera.flash-autofocus.xml \
    android.hardware.camera.front.xml \
    android.hardware.camera.full.xml \
    android.hardware.camera.raw.xml \
    privapp-permissions-miuicamera.xml \
    miuicamera-hiddenapi-package-whitelist.xml \
    init.leica.rc \
    ziyi_pro.json \
    leica_config_copy.sh \
    libarcsoft_single_chart_calibration \
    libijksdl \
    libijkplayer \
    libDocumentProcess \
    libc++_shared_miuicam \
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
    libion_miuicam \
    libijkffmpeg \
    libmicampostproc_client_app \
    libcamera_algoup_jni.xiaomi_app \
    libcamera_yuv_jni \
    libmiuiblursdk_leica_app \
    libc++_miuicam \
    libjpeg_miuicam \
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
    libcamera_ispinterface_jni.xiaomi \
    libgui_shim_miuicamera \
    libmegvii_bokeh_jni \
    libmorpho_Lowlight

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
#    ro.product.device=ziyi_pro \
#   ro.product.system.device=ziyi_pro

