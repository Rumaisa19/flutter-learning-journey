import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFFFF3E0), // caramel cream shade
      ),
      home: const StudentCardPage(),
    );
  }
}

class StudentCardPage extends StatelessWidget {
  const StudentCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFCC80), // caramel orange
        title: const Text(
          "Student Card",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown),
        ),
        centerTitle: true,
      ),
      body: const StudentCard(),
    );
  }
}

class StudentCard extends StatelessWidget {
  const StudentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: const Color(0xFFFFE0B2),
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.orange[300],
                child: const Icon(Icons.person, size: 50, color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Text(
                'Romaisa Mushtaq',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'BS Software Engineering',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              const Text(
                'University of Karachi',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildIcon(context, Icons.email, "Email Icon Clicked!"),
                  const SizedBox(width: 20),
                  _buildIcon(context, Icons.phone, "Phone Icon Clicked!"),
                  const SizedBox(width: 20),
                  _buildIcon(
                    context,
                    Icons.location_city,
                    "Location Icon Clicked!",
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange[400],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: const Color(0xFFFFD180),
                        title: const Text('Student Details'),
                        content: const Text(
                          'Semester: 4th Semester\n'
                          'Favorite Subject: Software Architecture\n'
                          'Hobbies: Reading Novels, Coding Flutter Apps, Photography',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text(
                              'Close',
                              style: TextStyle(color: Colors.brown),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('View Details'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(BuildContext context, IconData icon, String message) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(message)));
      },
      child: Icon(icon, size: 35, color: Colors.brown),
    );
  }
}
