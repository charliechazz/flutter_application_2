import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final String image;
  const CustomIcon({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> gradient = [
      const Color.fromARGB(255, 160, 62, 5),
      const Color.fromARGB(255, 228, 156, 90)
    ];
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          colors: gradient, // Define your gradient colors
          stops: const [0.0, 1.0],
        ).createShader(bounds);
      },
      blendMode: BlendMode.srcATop,
      child: Image.asset(
        image,
        height: 50,
        width: 50,
        alignment: Alignment.center,
        fit: BoxFit.cover,
      ),
    );
  }
}

/*Image.asset(
        image,
        height: 50,
        width: 50,
        alignment: Alignment.center,
        fit: BoxFit.cover,
      ), */