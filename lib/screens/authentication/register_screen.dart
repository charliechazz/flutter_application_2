import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  static const String name = "register_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(0, 188, 212, 0.42),
                  Color.fromRGBO(238, 130, 238, 0.23),
                ],
              ),
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          _Register()
        ]
      ),
    );
  }
}

class _Register extends StatelessWidget {
  final TextEditingController userTextController = TextEditingController();
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController ageTextController = TextEditingController();
  final TextEditingController medicTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
            ProfilePicture(),
          ],
        ),
      ),
    );
  }
}