import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'theme_controller.dart';

class ThemePage extends StatelessWidget {
  final controller = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Themes Sample'),
      ),
      body: SafeArea(
          minimum: EdgeInsets.symmetric(vertical: 16),
          child: GetBuilder<ThemeController>(
            builder: (_) => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Select theme:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ListTile(
                  title: const Text('System'),
                  subtitle: const Text('Use the user system preferences'),
                  leading: Radio(
                    activeColor: Colors.pinkAccent,
                    value: ThemeMode.system,
                    groupValue: controller.mode,
                    onChanged: (value) => controller.setMode(value),
                  ),
                ),
                ListTile(
                  title: const Text('Light'),
                  subtitle: const Text('Use the theme property'),
                  leading: Radio(
                    activeColor: Colors.pinkAccent,
                    value: ThemeMode.light,
                    groupValue: controller.mode,
                    onChanged: (value) => controller.setMode(value),
                  ),
                ),
                ListTile(
                  title: const Text('Dark'),
                  subtitle: const Text('Use the darkTheme property'),
                  leading: Radio(
                    activeColor: Colors.pinkAccent,
                    value: ThemeMode.dark,
                    groupValue: controller.mode,
                    onChanged: (value) => controller.setMode(value),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
