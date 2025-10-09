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
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.pink[50],
        cardColor: Colors.pink[100],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink[200],
          foregroundColor: Colors.white,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          ),
        ),
        snackBarTheme: SnackBarThemeData(
          backgroundColor: Colors.pink,
          actionTextColor: Colors.black,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 18),
          titleLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      home: StudentListScreen(),
    );
  }
}

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({super.key});

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  final List<Map<String, dynamic>> data = const [
    {
      "name": "Areeba Khan",
      "degree": "BSSE",
      "enrollment": "B23110106053",
      "email": "student1@gmail.com",
      "isActive": true,
    },

    {
      "name": "Ahmed Raza",
      "degree": "BSCS",
      "enrollment": "B23110106052",
      "email": "student2@gmail.com",
      "isActive": false,
    },
    {
      'name': 'Nameerah Noor',
      'degree': 'BSSE',
      "isActive": true,
      'email': 'nameerah@gmail.com',
      'enrollment': 'B23110106056',
    },
    {
      'name': 'Sana Khan',
      'degree': 'B.COM',

      "isActive": false,
      'email': 'sana@gmail.com',
      'enrollment': 'B23110106059',
    },
    {
      'name': 'Areeba Ahmed',
      'degree': 'BSCS',
      'email': 'areeba@gmail.com',
      'enrollment': 'B23110106060',
      "isActive": true,
    },
    {
      'name': 'Fatima Shah',
      'degree': 'BBA',
      'email': 'fatima@gmail.com',
      'enrollment': 'B23110106061',
      "isActive": false,
    },
    {
      'name': 'Hira Yousuf',
      'degree': 'BSIT',
      "isActive": true,
      'email': 'hira@gmail.com',
      'enrollment': 'B23110106062',
    },
    {
      'name': 'Aimen Tariq',
      'degree': 'BDA',
      "isActive": false,
      'email': 'aimen@gmail.com',
      'enrollment': 'B23110106063',
    },
    {
      'name': 'Nimra Zahid',
      'degree': 'BSSE',
      "isActive": true,
      'email': 'nimra@gmail.com',
      'enrollment': 'B23110106064',
    },
    {
      'name': 'Maryam Saleem',
      'degree': 'BSCS',
      'email': 'maryam@gmail.com',
      'enrollment': 'B23110106065',
      "isActive": false,
    },
  ];
  bool onToggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Profiles')),
      body: Column(
        children: [
          Expanded(
            
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final student = data[index];
                return StudentCard(
                  index: index + 1,
                  name: student['name'] ?? '',
                  degree: student['degree'] ?? '',
                  email: student['email'] ?? '',
                  enrollment: student['enrollment'] ?? '',
                  isActive: student['isActive'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class StudentCard extends StatefulWidget {
  final String name;
  final int index;
  final bool isActive;
  final String degree;
  final String enrollment;
  final String email;

  const StudentCard({
    super.key,
    required this.name,
    required this.degree,
    required this.email,
    required this.enrollment,
    required this.isActive,
    required this.index,
  });

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  late bool isSwitched;

  @override
  void initState() {
    super.initState();
    isSwitched = widget.isActive;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Tapped on ${widget.name}'),
            backgroundColor: Colors.pink[200],
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'University Of Karachi - Student Profile ${widget.index}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              _buildInfo('Student Name: ${widget.name}'),
              _buildInfo('Degree: ${widget.degree}'),
              _buildInfo('Enrollment No: ${widget.enrollment}'),
              _buildInfo('Email: ${widget.email}'),
              _buildInfo('Status: ${isSwitched ? "Active" : "Inactive"}'),
              SwitchListTile(
                title: const Text("Active Status"),
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
                activeColor: Colors.green,
                inactiveThumbColor: Colors.grey,
                secondary: Icon(
                  isSwitched ? Icons.check_circle : Icons.cancel,
                  color: isSwitched ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfo(String text) => Padding(
    padding: const EdgeInsets.only(bottom: 4.0),
    child: Text(
      text,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    ),
  );
}
