import 'package:flutter/material.dart';

class HeaderWaveGradiante extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //Propiedades
    paint.color = Color(0xFF2864ED);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = new Path();
    //Dibujar con el path y paint
    path.lineTo(0, size.height * 0.15);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.15,
        size.width * 0.5, size.height * 0.10);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.05, size.width, size.height * 0.10);
    path.lineTo(size.width, 0);

    //path.lineTo(size.width, size.height * 0.25);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
