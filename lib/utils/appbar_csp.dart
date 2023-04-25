import 'package:flutter/material.dart';

class CspAppbar extends CustomPainter {
  final Color color;

  CspAppbar({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height * 0.1587513);
    path0.lineTo(size.width * 0.3290816, size.height * 0.1587513);
    path0.lineTo(size.width * 0.4336735, size.height * 0.2001067);
    path0.lineTo(size.width * 0.5637755, size.height * 0.2001067);
    path0.lineTo(size.width * 0.6683673, size.height * 0.1600854);
    path0.lineTo(size.width, size.height * 0.1600854);
    path0.lineTo(size.width, 0);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
