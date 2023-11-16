import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes/routes.dart';
import 'package:flutter_application_2/widgets/login_widgets/login_user_custom_textfield.dart';
import 'package:flutter_application_2/widgets/login_widgets/login_password_custom_textfield.dart';

import '../../widgets/widgets.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  static const String name = "login_screen";

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
          _LogIn()
        ]
      ),
    );
  }
}

class _LogIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final TextEditingController userTextController = TextEditingController();
    final TextEditingController passwordTextController = TextEditingController();
    
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            const ProfilePicture(),
            const SizedBox(
              height: 80,
            ),
            UserCustomTextField(textControl: userTextController),
            const SizedBox(
              height: 40,
            ),
            LoginPasswordCustomTextField(controller: passwordTextController),
            const SizedBox(
              height: 80,
            ),
            BotonPersonalizado(
              text: 'Iniciar sesión', 
              evento:(){
                appRouter.pushNamed('menu_screen');
              }
            ),
            const SizedBox(
              height: 160,
            ),
          ],
        ),
      ),
    );
  }
}