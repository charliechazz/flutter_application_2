import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes/routes.dart';

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
        ),
        const LogIn()
        ]
      ),
    );
  }
}

class LogIn extends StatelessWidget {
  const LogIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(25, 20, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 200,
          ),
          const ProfilePicture(),
          const SizedBox(
            height: 160,
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
    );
  }
}