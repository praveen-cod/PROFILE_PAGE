import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color color;
  final double? size;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final String font; 

  const AppText({
    super.key,
    required this.text,
    required this.color,
    required this.size ,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.font = 'Poppins', 
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.getFont(
        font,
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
