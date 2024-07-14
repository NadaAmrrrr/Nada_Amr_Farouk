import 'package:flutter/material.dart';
import 'package:quizapp/screens/category.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    if (_formKey.currentState!.validate()) {
      // Handle login
      // You can use _usernameController.text and _passwordController.text
      
      // Navigate to the CategoryScreen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => category_screen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/alien.png', // replace with your asset image path
              height: 200,
            ),
            SizedBox(height: 10),
            Container(
              height: 725,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40),
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty || value.length < 4 || value[0] != value[0].toUpperCase() ) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 40),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility_off),
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                     validator: (value) {
  if (value == null || value.isEmpty || value.length < 8) {
    return 'Password must be at least 8 characters long';
  } else if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value)) {
    return 'Password must contain at least one uppercase letter, one lowercase letter, one number, and one special character';
  }
  return null;
},

                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('New to quiz app ?'),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            // Handle registration
                          },
                          child: Text(
                            'register',
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    ElevatedButton(
                      onPressed: _login,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        // Handle touch ID login
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.fingerprint,
                            size: 70,
                            color: Colors.blue,
                          ),
                          Text('Use Touch ID'),
                        ],
                      ),
                    ),
                    SizedBox(height: 150),
                    Row(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (bool? value) {
                                // Handle remember me checkbox
                              },
                            ),
                            Text('Remember me'),
                          ],
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            // Handle forgot password
                          },
                          child: Text(
                            'Forget Password ?',
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

