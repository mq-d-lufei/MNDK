
#https://developer.android.google.cn/ndk/guides/android_mk.html

#LOCAL_PATH表示源文件在开发树中的位置
LOCAL_PATH := $(call my-dir)

#hello-jni.c

#CLEAR_VARS可清除许多 LOCAL_XXX 变量，例如 LOCAL_MODULE、LOCAL_SRC_FILES 和 LOCAL_STATIC_LIBRARIES。
#不会清除 LOCAL_PATH
include $(CLEAR_VARS)


#LOCAL_MODULE 变量将存储您要构建的模块的名称。请在应用中每个模块使用一个此变量,每个模块名称必须唯一，且不含任何空格
LOCAL_MODULE := hello-jni

#枚举源文件，以空格分隔多个文件,必须包含要构建到模块中的 C 和/或 C++ 源文件列表。
LOCAL_SRC_FILES := hello-jni.c

#最后一行帮助系统将所有内容连接到一起,共享库变量导致构建系统生成具有 .so 扩展名的库文件
include $(BUILD_SHARED_LIBRARY)


#Study.c

#include $(CLEAR_VARS)
#LOCAL_MODULE := Study
#LOCAL_SRC_FILES := Study.c
#LOCAL_LDLIBS := -llog
#include $(BUILD_SHARED_LIBRARY)





