LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libcamera
LOCAL_SRC_FILES := SprdCameraHardwareInterface.cpp Parameters.cpp

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libutils \
    libcutils \
    libbinder \
    libui \
    libion

LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
