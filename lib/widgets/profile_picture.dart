import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 140,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,

      )
      /*
      child: Image.asset(
        'assets/no_profile.png',
        fit: BoxFit.contain,
      )*/
    );
  }

  
}
