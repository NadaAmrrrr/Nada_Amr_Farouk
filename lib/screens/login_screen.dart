import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
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
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: 'Username',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility_off),
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'New to quiz app ?',
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              // Handle forgot password
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
                        onPressed: () {
                          // Handle login
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                          child: Text('Login', style: TextStyle(
                            color: Colors.white,
                          ),),
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
              
            ],
          ),
        ),
      
    );
  }
}
