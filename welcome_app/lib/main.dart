import 'package:flutter/material.dart';

/* Real-World Practice Task #1: Build a Simple "Welcome App"
AppBar -> Title: "Welcome to Flutter"
Body -> Centered text: "My First Flutter App"
FloatingActionButton -> Show a SnackBar saying: "Clicked!" */

void main() {
  runApp(const WelcomeApp());
}

class WelcomeApp extends StatelessWidget {
  const WelcomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Welcome to flutter",

      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome to Flutter',
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 2, 7, 57),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 2, 7, 57),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "My First Flutter App",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 40,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Clicked!')));
          },
          backgroundColor: const Color.fromARGB(255, 2, 7, 57),
          focusColor: Colors.blue[50],
          child: Container(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.thumb_up, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
