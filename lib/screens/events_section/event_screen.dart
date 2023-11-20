import 'package:flutter/material.dart';

import '../../routes/routes.dart';
import '../../widgets/widgets.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});
  static String name = 'event_screen';
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
                  Color(0xfffffbb9),Color(0xffcaf0fe)
                ],
              ),
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          const _EventCheck()
        ]
      ),
    );
  }
}

class _EventCheck extends StatelessWidget {
  const _EventCheck();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const CustomIcon(image:'assets/events_icon_150288.png'),
            const SizedBox(
              height: 160,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Text(
                splitTextWithSpaces('No tienes ningun evento para hoy'),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 10,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 160,
            ),
            IconButton(
              onPressed: (){
                appRouter.pushNamed('menu_screen');
              }, 
              icon: const Icon(Icons.arrow_back)
            )
          ],
        )
      )
    );
  }

  String splitTextWithSpaces(String text) {
    // Split the text into words using blank spaces as separators
    List<String> words = text.split(" ");

    // Join the words using newline characters to create line separation
    String separatedText = words.join("\n");

    return separatedText;
  }
}