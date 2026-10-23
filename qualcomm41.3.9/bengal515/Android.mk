LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),bengal515)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
