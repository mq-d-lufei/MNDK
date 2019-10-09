package com.crazy.mndk;

/**
 * Created by feaoes on 2018/3/21.
 */

public class HelloJni {

    static {
        System.loadLibrary("hello");
    }

    public static native String stringFromJni();
}
