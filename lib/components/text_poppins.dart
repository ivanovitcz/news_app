import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextPoppins extends StatelessWidget {
  const TextPoppins({
    Key? key,
    required this.text,
    required this.color,
    required this.weight,
    required this.size,
    this.align,
  }) : super(key: key);

  final String text;
  final Color color;
  final FontWeight weight;
  final double size;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: color,
        fontWeight: weight,
        fontSize: size,
      ),
      textAlign: align ?? TextAlign.left,
    );
  }
}
