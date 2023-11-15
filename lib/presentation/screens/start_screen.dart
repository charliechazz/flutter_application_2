import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes/routes.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  static const String name = "start_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        appRouter.pushNamed('menu_screen');
      }),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(0, 188, 212, 0.42),
              Color.fromRGBO(238, 130, 238, 0.23),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 200,
              ),
              const Text(
                "Mnemosine",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 160,
              ),
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                elevation: 0.0,
                onPressed: () {},
                color: const Color.fromRGBO(236, 255, 195, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                elevation: 0.0,
                onPressed: () {},
                color: const Color.fromRGBO(236, 255, 195, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 160,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
