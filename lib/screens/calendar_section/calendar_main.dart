import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes/routes.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../widgets/widgets.dart';

class CalendarMainScreen extends StatelessWidget {
  const CalendarMainScreen({super.key});
  static String name = 'main_calendar_screen';

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
                  Color(0xffe0edd4), Color(0xffcaf0fe)
                ],
              ),
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          const Calendar()
        ]
      ),
    );
  }
}

class Calendar extends StatefulWidget {
  const Calendar({
    super.key,
  });

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
              const SizedBox(
                height: 100,
              ),
              const CustomIcon(image:'assets/calendar-with-a-clock-time-tools_icon-icons.com_56831.png'),
              TableCalendar(
                firstDay: DateTime.utc(2023, 11, 1),
                lastDay: DateTime.utc(2024, 12, 31),
                focusedDay: DateTime.now(),
              ),
              const SizedBox(
                height: 20,
              ),
              BotonPersonalizado(
                text: 'Ver evento', 
                color: Colors.blue,
                evento: (){}, 
              ),
              const SizedBox(
                height: 20,
              ),
              BotonPersonalizado(
                text: 'Agregar evento', 
                color: Colors.blue,
                evento: (){}, 
              ),
              const SizedBox(
                height: 20,
              ),
              BotonPersonalizado(
                text: '¿Como te sientes?', 
                color: Colors.blue,
                evento: (){}, 
              ),
              const SizedBox(
                height: 20,
              ),
              IconButton(
                onPressed: (){
                  appRouter.pushNamed('menu_screen');
                }, 
                icon: const Icon(Icons.arrow_back)
              )
            ]
          )
        )
    );
  }
}