import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/register_widgets/register_name_custom_textfield.dart';
import 'package:flutter_application_2/widgets/register_widgets/register_password_custom_textfield.dart';

import '../../routes/routes.dart';
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
  final TextEditingController nameTextController = TextEditingController();
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController ageTextController = TextEditingController();
  final TextEditingController medicTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            const ProfilePicture(),
            const SizedBox(
              height: 35,
            ),
            NameCustomTextField(textControl: nameTextController),
            const SizedBox(
              height: 35,
            ),
            EmailCustomTextField(textControl: emailTextController),
            const SizedBox(
              height: 35,
            ),
            AgeCustomTextField(controler: ageTextController),
            RegisterPasswordCustomTextField(controller: passwordTextController),
            const SizedBox(
              height: 20,
            ),
            BotonPersonalizado(
              text: 'Sign In', 
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