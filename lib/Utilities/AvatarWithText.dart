import 'package:flutter/material.dart';

class AvatarWithText extends StatelessWidget {
  final String imagePath;
  final String? text; 
  final Color? color; 

  const AvatarWithText({
    required this.imagePath,
    this.text, 
    this.color, 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(width: 25, height: 5,),
        Text(
          text ?? '', 
          style: TextStyle(color: color ?? Colors.black,
          fontSize: 16),
        ),
            
      ],
    );
  }
}
