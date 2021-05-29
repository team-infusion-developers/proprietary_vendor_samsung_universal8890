# Automatically generated file. DO NOT MODIFY
#
# This file is generated by device/samsung/universal8890-common/setup-makefiles.sh

LOCAL_PATH := $(call my-dir)

ifneq ($(filter gracerlte herolte hero2lte,$(TARGET_DEVICE)),)


ifneq ($(WITH_EXYNOS_BSP),true)
endif
include $(CLEAR_VARS)

EGL_LIBS := libGLES_mali.so libOpenCL.so libOpenCL.so.1 libOpenCL.so.1.1 vulkan.exynos5.so

EGL_32_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/lib/,$(EGL_LIBS))
$(EGL_32_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Symlink: EGL 32-bit lib: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /vendor/lib/egl/libGLES_mali.so $@

EGL_64_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/lib64/,$(EGL_LIBS))
$(EGL_64_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Symlink: EGL 64-bit lib : $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /vendor/lib64/egl/libGLES_mali.so $@

ALL_DEFAULT_INSTALLED_MODULES += $(EGL_32_SYMLINKS) $(EGL_64_SYMLINKS)

endif
