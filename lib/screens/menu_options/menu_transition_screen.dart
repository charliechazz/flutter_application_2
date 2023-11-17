import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/menu_widgets/custom_icon_container.dart';

class TransitionScreen extends StatelessWidget {
  static String name = 'transition_screen';
  final int type;
  const TransitionScreen({
    super.key, 
    required this.type, 
  });

  
  
  @override
  Widget build(BuildContext context) {
    late String title;
    late List<Color> gradient;
    late String image;
    if(type == 1){
      title = 'CALENDARIO';
      gradient = [const Color(0xffe0edd4), const Color(0xffcaf0fe)];
      image = 'assets/calendar-with-a-clock-time-tools_icon-icons.com_56831.png';
    }
    if(type == 2){
      title = 'EJERCITA\nTU\nMEMORIA';
      gradient = [const Color(0xfff1c9fe), const Color(0xffcaf0fe)];
      image = 'assets/976605-appliances-console-controller-dualshock-gamepad-games-videogame_106553.png';
    } 
    if(type == 3){
      title = 'EVENTOS';
      gradient = [const Color(0xfffffbb9), const Color(0xffcaf0fe)];
      image = 'assets/events_icon_150288.png';
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: gradient,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 10,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomIcon(image: image)
              ],
            )
          )
        ),
      ),
    );
  }
}