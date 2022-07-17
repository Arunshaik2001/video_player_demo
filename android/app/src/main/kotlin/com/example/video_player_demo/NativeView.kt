package com.example.video_player_demo

import android.app.AlertDialog
import android.app.ProgressDialog
import android.content.ContentValues
import android.content.ContentValues.TAG
import android.content.Context
import android.net.Uri
import android.os.Build
import android.util.Log
import android.view.View
import android.widget.VideoView
import io.flutter.plugin.platform.PlatformView


internal class NativeView(context: Context, id: Int, creationParams: Map<String?, Any?>?) :
    PlatformView {

    private var view : VideoViewPlayer? = VideoViewPlayer(context)

    override fun getView(): View {
        return view!!
    }

    override fun dispose() {
        view = null
    }

}