import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget levelButtonWidget({
  Color? backgroundColor,
  required String title,
  Color? outlinedColor,
  Color? textColor,
}) {
  return Chip(
    shape: StadiumBorder(
      side: BorderSide(color: outlinedColor ?? Colors.black54, width: 0.4),
    ),
    label: Container(
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
      child: Text(
        title,
        style: GoogleFonts.notoSans(
          color: textColor,
          fontSize: 13,
        ),
      ),
    ),
    backgroundColor: backgroundColor,
  );
}
