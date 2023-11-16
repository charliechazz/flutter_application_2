import 'package:flutter/material.dart';

class BotonPersonalizado extends StatelessWidget {
  final String text;
  final Function() evento;

  const BotonPersonalizado({
    super.key, 
    required this.text, 
    required this.evento
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: evento,
      color: const Color.fromRGBO(236, 255, 195, 1),
      minWidth: 200.0,
      height: 40.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}