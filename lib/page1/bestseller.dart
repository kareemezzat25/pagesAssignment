import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pagesassignment/page1/categoryModelseller.dart';

class CardbestSiller extends StatelessWidget {
  CategoryModel categoryModel;
  CardbestSiller({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: 315,
      height: 144,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xFFF5F5FA)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(categoryModel.categoryimage,
                width: 120, height: 120, fit: BoxFit.fill),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                categoryModel.title,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF010104)),
              ),
              SizedBox(
                height: 4,
              ),
              Text(categoryModel.author,
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6A6A8B)))
            ],
          )
        ],
      ),
    );
  }
}
