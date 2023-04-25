// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:jp_loft_task/utils/appbar_csp.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    Key? key,
    required this.size,
    required this.color,
  }) : super(key: key);

  final Size size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size.width, (size.width * 1.912244835678412).toDouble()),
      painter: CspAppbar(color: color),
    );
  }
}
