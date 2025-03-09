LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libpythonmain
LOCAL_MODULE_SUFFIX := .so
# Add your application source files here...
LOCAL_SRC_FILES := start.c pyjniusjni.c

LOCAL_CFLAGS += -pie -fPIE -I$(PYTHON_INCLUDE_ROOT) $(EXTRA_CFLAGS)

LOCAL_SHARED_LIBRARIES := python_shared

LOCAL_LDLIBS := -llog $(EXTRA_LDLIBS)

LOCAL_LDFLAGS += -pie -fPIE -L$(PYTHON_LINK_ROOT) $(APPLICATION_ADDITIONAL_LDFLAGS)

# include $(BUILD_SHARED_LIBRARY)
include $(BUILD_EXECUTABLE)
