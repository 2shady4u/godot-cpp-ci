# Android.mk
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := godot-prebuilt
LOCAL_SRC_FILES := godot-cpp/bin/libgodot-cpp.android.debug.arm64v8.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := demo/bin/android/arm64-v8a/libgdexample
LOCAL_CPPFLAGS := -std=c++14
LOCAL_CPP_FEATURES := rtti exceptions
LOCAL_LDLIBS := -llog

LOCAL_SRC_FILES := \
src/gdlibrary.cpp \
src/gdexample.cpp \

LOCAL_C_INCLUDES := \
godot-cpp/godot_headers \
godot-cpp/include/ \
godot-cpp/include/core \
godot-cpp/include/gen \

LOCAL_STATIC_LIBRARIES := godot-prebuilt

include $(BUILD_SHARED_LIBRARY)