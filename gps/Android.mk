LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := gps.default
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_SRC_FILES := gps.c

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils

LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
