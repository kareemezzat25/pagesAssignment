import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pagesassignment/page2/excerisemodel.dart';

class Excerise extends StatelessWidget {
  ExceriseModel exceriseModel;
  Excerise({super.key, required this.exceriseModel});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 151,
        height: 56,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: exceriseModel.color, borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Image.asset(exceriseModel.image),
            SizedBox(
              width: 14,
            ),
            Text(
              exceriseModel.text,
              style:
                  GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 14),
            )
          ],
        ));
  }
}
