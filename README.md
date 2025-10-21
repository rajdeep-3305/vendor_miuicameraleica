# Leica Camera for rubyx AOSP
### Cloning :
- Clone this repo in vendor_MiuiCameraLeica in your working directory by :
```
git clone https://github.com/rajdeep-3305/vendor_miuicameraleica vendor/MiuiCameraLeica
```
Make these changes in **lineage_rubyx.mk**
```
# MiuiCamera
$(call inherit-product-if-exists, vendor/MiuiCameraLeica/config.mk)
```
