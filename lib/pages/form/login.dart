import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Text('Masuk sebagai Customer'),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text('Masuk sebagai Driver'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
