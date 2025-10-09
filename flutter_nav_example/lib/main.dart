import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Center(child: Text("Home Screen")),
    Center(child: Text("Search Screen")),
    Center(child: Text("Profile Screen")),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          centerTitle: true,
          title: Text("Bottom Navigation Example"),
          backgroundColor: Colors.pink[100],
        ),
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.pink,
          backgroundColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
