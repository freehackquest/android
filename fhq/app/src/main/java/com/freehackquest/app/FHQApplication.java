package com.freehackquest.app;

import android.app.Application;
import android.util.Log;

import com.freehackquest.libfhqcli.FHQClient;

public class FHQApplication extends Application {
    private static final String TAG = FHQApplication.class.getSimpleName();

    @Override
    public void onCreate(){
        super.onCreate();
        Log.i(TAG, "onCreate");

        FHQClient.startService(getApplicationContext()); // init instance
        // FHQClient.api().connect();
    }
}