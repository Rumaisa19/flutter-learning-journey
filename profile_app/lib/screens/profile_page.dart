import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 4,
        title: const Text(
          'Student Profile',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // Profile Avatar
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.brown[200],
                  child: const Icon(
                    Icons.person,
                    size: 90,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),

                // Name
                const Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),

                // Profession
                Text(
                  'Flutter Developer',
                  style: TextStyle(fontSize: 16, color: Colors.brown[600]),
                ),

                const SizedBox(height: 25),

                // Info Cards
                InfoCard(
                  text: 'john.doe@email.com',
                  icon: Icons.email,
                  color: Colors.green,
                ),
                InfoCard(
                  text: '+92 300 1234567',
                  icon: Icons.phone,
                  color: Colors.blue,
                ),
                InfoCard(
                  text: 'Lahore, Pakistan',
                  icon: Icons.location_on,
                  color: Colors.red,
                ),

                const SizedBox(height: 20),

                // Action Button
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown[400],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 12,
                    ),
                  ),
                  icon: const Icon(Icons.edit, color: Colors.white),
                  label: const Text(
                    "Edit Profile",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  const InfoCard({
    required this.text,
    required this.color,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: color, size: 28),
        title: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
