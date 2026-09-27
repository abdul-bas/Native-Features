import 'package:flutter/services.dart';


class NativeFeatures {
  static const MethodChannel _channel =
      MethodChannel('com.example.native');

  static Future<String?> getLocation() async {
    return await _channel.invokeMethod<String>('getLocation');
  }

  static Future<String?> openCamera() async {
    return await _channel.invokeMethod<String>('openCamera');
  }

  static Future<String?> getAccelerometer() async {
    return await _channel.invokeMethod<String>('getAccelerometer');
  }

  static Future<String?> getGyroscope() async {
    return await _channel.invokeMethod<String>('getGyroscope');
  }
}