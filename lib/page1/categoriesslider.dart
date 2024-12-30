import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesSlider extends StatelessWidget {
  String category;
  CategoriesSlider({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        category,
        style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF2E2E5D)),
      ),
      decoration: BoxDecoration(
          color: const Color(0xFFF5F5FA),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
