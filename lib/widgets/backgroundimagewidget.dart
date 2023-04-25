import 'package:flutter/material.dart';

class BackImageWidget extends StatelessWidget {
  const BackImageWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      child: Container(
        height: (size.height) * 0.66,
        width: size.width,
        padding: const EdgeInsets.only(),
        color: Colors.yellow,
        child: Image.asset(
          "assets/images/juggling.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
