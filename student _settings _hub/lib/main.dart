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
      title: 'Settings Page',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF8F5FF), // light cream background
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFD0BCFF),
          foregroundColor: Colors.black,
        ),
      ),
      home: const SettingsPage(),
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isNotificationsEnabled = false;
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 8,
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.purple[300],
              child: Icon(Icons.verified_user, color: Colors.white, size: 30),
            ),
            title: Text(
              'Rumaisa Mushtaq',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Text(
              'Active Student',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Divider(color: Colors.grey, thickness: 1),
        const SizedBox(height: 10),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          child: Column(
            children: [
              SwitchListTile(
                title: Text(
                  'Enable Notifications',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                secondary: Icon(Icons.notifications, color: Colors.amber[700]),
                value: isNotificationsEnabled,
                onChanged: (bool value) {
                  setState(() {
                    isNotificationsEnabled = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text(
                  'Dark Mode',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                secondary: Icon(Icons.dark_mode, color: Colors.indigo),
                value: isDarkMode,
                onChanged: (bool value) {
                  setState(() {
                    isDarkMode = value;
                  });
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Divider(color: Colors.grey, thickness: 1),
        const SizedBox(height: 10),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.privacy_tip, color: Colors.purple),
                title: Text(
                  'Privacy Policy',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Privacy Policy clicked!')),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.description, color: Colors.teal),
                title: Text(
                  'Terms & Conditions',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Terms & Conditions clicked!'),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.info_outline, color: Colors.blue),
                title: Text(
                  'About App',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('About App clicked!')),
                  );
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          child: ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text(
              'Logout',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('Logged out!')));
            },
          ),
        ),
      ],
    );
  }
}
