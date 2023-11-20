import 'package:flutter/material.dart';

import '../../routes/routes.dart';
import '../../widgets/widgets.dart';

class Game1Screen extends StatelessWidget {
  const Game1Screen({super.key});
  static String name = 'game1_screen';

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
                  Color(0xfff1c9fe), Color(0xffcaf0fe)
                ],
              ),
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          const _Game()
        ]
      ),
    );
  }
}

class _Game extends StatelessWidget {
  const _Game();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const CustomIcon(image:'assets/976605-appliances-console-controller-dualshock-gamepad-games-videogame_106553.png'),
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
}