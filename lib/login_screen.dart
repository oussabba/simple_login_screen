// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Login screen'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Login',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.email),
                    suffix: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Text('Don\'t have account?'),
                    TextButton(
                      onPressed: () {},
                      child: Text('Register Now'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
