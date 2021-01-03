import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController{
  ThemeMode mode;

  @override
  void onInit() {
    mode = ThemeMode.system;
    super.onInit();
  }

  void setMode(ThemeMode mode){
    this.mode = mode;
    Get.changeThemeMode(mode);
    update();
  }
}