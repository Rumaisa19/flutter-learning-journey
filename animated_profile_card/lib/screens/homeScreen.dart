import 'package:flutter/material.dart';

class ResponsiveProfileCard extends StatefulWidget {
  const ResponsiveProfileCard({super.key});

  @override
  State<ResponsiveProfileCard> createState() => _ResponsiveProfileCardState();
}

class _ResponsiveProfileCardState extends State<ResponsiveProfileCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    // Screen size
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0), // Responsive padding
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 500, // Limit width for tablets/desktops
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Colors.pink[50],
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 24.0,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: screenWidth < 350 ? 50 : 60,
                        backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd845F8jUmnDlzToHihJutzsUsefKBXTUNFg&s',
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Rumaisa',
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Junior Developer',
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                      const SizedBox(height: 20),

                      /// Button to expand
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          isExpanded ? 'Hide Details' : 'Show Details',
                        ),
                      ),

                      /// Animated details section
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                        height: isExpanded ? 90 : 0,
                        child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 300),
                          opacity: isExpanded ? 1 : 0,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _iconColumn(Icons.email, 'Email'),
                                _iconColumn(Icons.phone, 'Phone'),
                                _iconColumn(Icons.message, 'Message'),
                                _iconColumn(Icons.person_add, 'Follow'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Reusable column builder for icon + label
  Widget _iconColumn(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.pink[400], size: 28),
        const SizedBox(height: 6),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
