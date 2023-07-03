package com.example.example

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel

class MainActivity: FlutterActivity() {
    private val textEvent = "com.example.example"

    private var textEventSink: EventChannel.EventSink? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        EventChannel(flutterEngine.dartExecutor.binaryMessenger,textEvent).setStreamHandler(
            object: EventChannel.StreamHandler {
                override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
                    textEventSink = events
                    textEventSink?.success("Harsh")
                }

                override fun onCancel(arguments: Any?) {
                    textEventSink?.success("Harsh")
                    textEventSink = null
                }

            }
        )
    }
}
