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
                  minWidth: 100,
                  padding: const EdgeInsets.all(8.0),
                  color: const Color(0xFF0C8913),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(
                        width: 2.50,
                        color: Color(0xFF0C8913),
                      )),
                  child: const Text('Masuk sebagai Customer'),
                  onPressed: () {},
                ),
                MaterialButton(
                  minWidth: 100,
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.transparent,
                  textColor: const Color(0xFF0C8913),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(
                        width: 2.50,
                        color: Color(0xFF0C8913),
                      )),
                  child: const Text('Masuk sebagai Driver'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
