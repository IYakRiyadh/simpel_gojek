import 'package:app_gojek/pages/form/intro.dart';
import 'package:app_gojek/pages/navigasi/navigation.dart';
import 'package:flutter/material.dart';

class UserMasuk extends StatelessWidget {
  const UserMasuk({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return IntroUser();
        } else {
          return NavigasiBarBottom();
        }
      },
    );
  }
}
