import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String
      imagePath; // Cambié IconData por String para la ruta de la imagen
  final String buttonText;

  const CustomIconButton({
    Key? key,
    required this.imagePath,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Acción a realizar cuando se presiona el botón
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromARGB(0, 255, 255, 255),
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 150,
            color: Colors.white,
          ),
          const SizedBox(height: 8),
          Text(
            buttonText,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
              letterSpacing: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key});
  static const String name = "menu_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "MENU",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              CustomIconButton(
                imagePath:
                    'assets/calendar-with-a-clock-time-tools_icon-icons.com_56831.png',
                buttonText: 'CALENDARIO',
              ),
              SizedBox(height: 50),
              CustomIconButton(
                imagePath:
                    'assets/976605-appliances-console-controller-dualshock-gamepad-games-videogame_106553.png',
                buttonText: 'EJERCITA TU MEMORIA',
              ),
              SizedBox(height: 50),
              CustomIconButton(
                imagePath: 'assets/events_icon_150288.png',
                buttonText: 'EVENTOS',
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
