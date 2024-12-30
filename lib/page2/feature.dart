import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pagesassignment/page2/featuremodel.dart';

class Feature extends StatelessWidget {
  FeatureModel featureModel;
  Feature({super.key, required this.featureModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326,
      height: 168,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xFFECFDF3)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  featureModel.title,
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF344054)),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  featureModel.description,
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Image.asset("assets/_Play button.png"),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      featureModel.time,
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                )
              ],
            ),
          ),
          Image.asset(width: 102, height: 90, featureModel.image)
        ],
      ),
    );
  }
}
