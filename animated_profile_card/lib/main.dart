// import 'package:animated_profile_card/screens/homeScreen.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Profile',
//       theme: ThemeData(
//         scaffoldBackgroundColor: Colors.white,
//         appBarTheme: AppBarTheme(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(15),
//               bottomRight: Radius.circular(15),
//             ),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.pink[300],
//           surfaceTintColor: Colors.grey,
//           elevation: 5,
//           titleSpacing: 1.2,
//           titleTextStyle: const TextStyle(
//             fontSize: 26,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: Text('Profile')),
//         body: HomeScreen(),
//       ),
//     );
//   }
// }

import 'package:animated_profile_card/screens/homeScreen.dart';
import 'package:flutter/material.dart';
// Adjust path if needed

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.pink[300],
          surfaceTintColor: Colors.grey,
          elevation: 5,
          titleSpacing: 1.2,
          titleTextStyle: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      home: ResponsiveProfileCard(),
    );
  }
}
