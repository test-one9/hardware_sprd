LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := CameraHal/CameraHal.cpp \
LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    system/media/camera/include

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libutils \
    libbinder \
    libcutils \
    libcamera_client \
    libhardware \
    libui \
    libion

LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
