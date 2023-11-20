import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes/routes.dart';

import '../../widgets/widgets.dart';


class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  static const String name = "start_screen";

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
            height: double.infinity,
            width: double.infinity,
          ),
          const MainScreen()
        ]
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            const Text(
              "Mnemosine",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w900,
                letterSpacing: 10,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 160,
            ),
            BotonPersonalizado(
              text: 'Log In', 
              color: const Color.fromRGBO(236, 255, 195, 1),
              evento:(){
                appRouter.pushNamed('login_screen');
              }
            ),
            BotonPersonalizado(
              text: 'Sign Up', 
              color: const Color.fromRGBO(236, 255, 195, 1),
              evento:(){
                appRouter.pushNamed('register_screen');
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
