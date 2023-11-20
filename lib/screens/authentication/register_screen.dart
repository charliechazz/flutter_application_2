import 'package:flutter/material.dart';

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

class _Register extends StatefulWidget {
  @override
  State<_Register> createState() => _RegisterState();
}

class _RegisterState extends State<_Register> {
  final TextEditingController nameTextController = TextEditingController();

  final TextEditingController emailTextController = TextEditingController();

  final TextEditingController ageTextController = TextEditingController();

  final TextEditingController medicTextController = TextEditingController();

  final TextEditingController passwordTextController = TextEditingController(); 

  bool termsAndServices = false;

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
            AgeCustomTextField(textControl: ageTextController),
            const SizedBox(
              height: 20,
            ),
            SicknessCustomTextField(textControl: medicTextController),
            const SizedBox(
              height: 20,
            ),
            RegisterPasswordCustomTextField(controller: passwordTextController),
            const SizedBox(
              height: 20,
            ),
            const CustomCheckbox(message:'  Aceptar términos y condiciones'),
            const SizedBox(
              height: 25,
            ),
            BotonPersonalizado(
              text: 'Sign In', 
              color: const Color.fromRGBO(236, 255, 195, 1),
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