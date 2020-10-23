/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

#include <jni.h>
#include <stdio.h>
#include "JNIFunc.h"

JNIEXPORT jstring JNICALL Java_xprojectcam_main_Main_nGetVersion(JNIEnv *jenv, jobject jobj) {

    // printf("\nHello World from C\n");

    jstring jString = jenv->NewStringUTF((const char *) "1.01");

    return (jstring) jString;
}

JNIEXPORT jint JNICALL Java_xprojectcam_main_Main_nDrawScene(JNIEnv *jenv, jobject jobj, jint mode) {

    JavaVM *jvm = 0;

    if (App.IsBusy) return 0;


    App.IsBusy = true;

    jenv->GetJavaVM(&jvm);

    if (jvm) {
        jvm->AttachCurrentThread(&jenv, NULL);
    } else {
        printf("DrawDwg : no jvm!");
    }

    // GLJNIenv = jenv->NewGlobalRef(jenv);
    App.JNIenv = jenv;
    App.JNIjobj = jobj;

    // my_printf("Draw DWG : %d entities", GLDwgData.num_objects);

    if (App.DwgData.num_objects) {
        draw_dwg(&App.DwgData, App.drawOptions);
    }


    // jenv->DeleteGlobalRef(jenv, GLJNIenv);

    App.IsBusy = false;

    return (jint) App.DwgData.num_objects;
}