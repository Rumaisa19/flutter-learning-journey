import 'package:flutter/material.dart';
import 'package:setting_page/screens/settingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueGrey[100],
          titleSpacing: 1.0,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
        ),
      ),

      home: Settingscreen(),
    );
  }
}
