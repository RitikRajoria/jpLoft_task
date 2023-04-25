import 'package:flutter/material.dart';

class CspBottombar extends CustomPainter {
  final Color color;

  CspBottombar({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.8791356);
    path0.lineTo(size.width * 0.4183673, size.height * 0.8791356);
    path0.lineTo(size.width * 0.4974490, size.height * 0.9151548);
    path0.lineTo(size.width * 0.5739796, size.height * 0.8791356);
    path0.lineTo(size.width, size.height * 0.8804696);
    path0.lineTo(size.width, size.height * 1.0032017);
    path0.lineTo(0, size.height * 1.0005337);
    path0.lineTo(0, size.height * 0.8791356);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
