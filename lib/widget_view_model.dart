import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class WidgetViewModel extends ChangeNotifier {
  static const textEvent = EventChannel("com.example.example");

  Stream<String> textStream = textEvent.receiveBroadcastStream().distinct().map((event) {
    return event as String;
  });
}