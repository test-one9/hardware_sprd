LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := audio.primary.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := audio_hw.c

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils \
    libtinyalsa

LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
