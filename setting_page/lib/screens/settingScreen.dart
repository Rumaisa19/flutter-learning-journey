import 'package:flutter/material.dart';

class Settingscreen extends StatefulWidget {
  const Settingscreen({super.key});

  @override
  State<Settingscreen> createState() => _SettingscreenState();
}

class _SettingscreenState extends State<Settingscreen> {
  bool isDarkMode = true;
  bool isNotificationEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode?Colors.grey[800]:Colors.white,
      appBar: AppBar(
        title: Text(
          "Settings",

          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            letterSpacing: 1.2,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 4),
              child: Text(
                'GENERAL',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isDarkMode?Colors.white:Colors.pink,
                  fontSize: 16,
                  letterSpacing: 1.2,
                ),
              ),
            ),

            Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(12),
              ),
              child: ListTile(
                leading: Icon(
                  isDarkMode ? Icons.dark_mode : Icons.light_mode,
                  color: Colors.amber,
                ),

                title: Text('Dark Mode'),
                subtitle: Text('Save battery by using dark theme'),
                trailing: Switch(
                  value: isDarkMode,
                  onChanged: (bool newValue) {
                    setState(() {
                      isDarkMode = newValue;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          newValue
                              ? 'Dark Theme enabled'
                              : 'Dark Theme disabled',
                        ),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                ),
              ),
            ),
            Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(
                  isNotificationEnabled
                      ? Icons.notifications
                      : Icons.notifications_off,
                  color: Colors.purple,
                ),

                title: Text('Notifications'),
                subtitle: Text("Turn app alerts on or off"),
                trailing: Switch(
                  value: isNotificationEnabled,
                  onChanged: (bool newValue) {
                    setState(() {
                      isNotificationEnabled = newValue;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          newValue
                              ? 'Notifaication enabled': 'Notification disabled',
                              
                        ),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
