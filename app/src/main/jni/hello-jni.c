//
// Created by feaoes on 2018/3/21.
//

#include <stdio.h>
#include <jni.h>
#include <string.h>
#include "com_crazy_mndk_HelloJni.h"

JNIEXPORT jstring JNICALL

Java_com_crazy_mndk_HelloJni_stringFromJni(JNIEnv *env, jclass jclazz){

    return (*env)->NewStringUTF(env,"String from jni");
}
