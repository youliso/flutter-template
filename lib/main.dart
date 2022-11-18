import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes.dart';
import 'index.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(buildRouter());
  }
}

void main() {
  MainBinding().dependencies();
  runApp(const MainApp());
}
