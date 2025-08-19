LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libmemoryheapion
LOCAL_SRC_FILES := MemoryHeapIon.cpp

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils \
    libutils \
    libbinder \
    libion

LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
