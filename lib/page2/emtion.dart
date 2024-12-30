import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pagesassignment/page2/emtionmodel.dart';

class EmotionAvater extends StatelessWidget {
  Emotion emotion;
  EmotionAvater({super.key, required this.emotion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(100000)),
          child: CircleAvatar(
            child: Image.asset(emotion.image),
          ),
        ),
        Text(
          emotion.text,
          style: GoogleFonts.inter(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
