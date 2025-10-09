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
      title: 'Login UI',
      home: Scaffold(backgroundColor: Colors.amber[100], body: LoginScreen()),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscuredPassword = true;
  double _opacity = 0.0;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacity,
      duration: Duration(seconds: 1),
      curve: Curves.easeIn,
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.amber,
                    child: Center(
                      child: Text(
                        'Login to continue',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown[700],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(
                      helperText: '@gmail.com',
                      filled: true,
                      fillColor: Color(0xFFFFF3E0),
                      labelText: 'Email Address',
                      hintText: 'Enter Your Email Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,

                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _obscuredPassword,

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFFF3E0),
                      labelText: 'Password',
                      hintText: 'Enter Your Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscuredPassword = !_obscuredPassword;
                          });
                        },
                        icon: Icon(
                          _obscuredPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ), // shows on right
                    ),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFB74D),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(12),
                      ),
                    ),
                    child: Text('Login'),
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
