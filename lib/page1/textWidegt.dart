import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowWidget extends StatelessWidget {
  String text;
  RowWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              )),
          Text("See more",
              textAlign: TextAlign.right,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Color(0xFF4838D1),
                      fontSize: 14,
                      fontWeight: FontWeight.w500)))
        ],
      ),
    );
  }
}
