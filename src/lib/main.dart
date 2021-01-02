import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Theme Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Theme Demo'),
    );
  }

  ThemeData get lightTheme => ThemeData.light().copyWith(
      primaryColor: Colors.teal[500],
      visualDensity: VisualDensity.adaptivePlatformDensity);

  ThemeData get darkTheme => ThemeData.dark().copyWith(visualDensity: VisualDensity.adaptivePlatformDensity);
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Select theme:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: const Text('System'),
              leading: Radio(
                activeColor: Colors.pinkAccent,
                value: ThemeMode.system,
                groupValue: _themeMode,
                onChanged: (value) {
                  setState(() {
                    _themeMode = value;
                  });
                  _rebuildTheme(context);
                },
              ),
            ),
            ListTile(
              title: const Text('Light'),
              leading: Radio(
                activeColor: Colors.pinkAccent,
                value: ThemeMode.light,
                groupValue: _themeMode,
                onChanged: (value) {
                  setState(() {
                    _themeMode = value;
                  });
                  _rebuildTheme(context);
                },
              ),
            ),
            ListTile(
              title: const Text('Dark'),
              leading: Radio(
                activeColor: Colors.pinkAccent,
                value: ThemeMode.dark,
                groupValue: _themeMode,
                onChanged: (value) {
                  setState(() {
                    _themeMode = value;
                  });
                  _rebuildTheme(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _rebuildTheme(BuildContext context) {
    Get.changeThemeMode(_themeMode);
  }
}
