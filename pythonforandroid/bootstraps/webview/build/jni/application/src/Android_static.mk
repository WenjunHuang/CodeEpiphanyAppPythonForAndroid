LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := pythonmain

LOCAL_SRC_FILES := YourSourceHere.c

LOCAL_STATIC_LIBRARIES := SDL2_static

include $(BUILD_SHARED_LIBRARY)
$(call import-module,SDL)LOCAL_PATH := $(call my-dir)
