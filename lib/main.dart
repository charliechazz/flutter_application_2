import 'package:flutter/material.dart';
//import 'package:flutter_application_2/presentation/screens/start_screen.dart';
import 'package:flutter_application_2/routes/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        //home: StartScreen()
    );
  }
}
