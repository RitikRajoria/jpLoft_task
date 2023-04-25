import 'package:flutter/material.dart';
import 'package:jp_loft_task/widgets/csp_appbarwidget.dart';

class AppbarGroupedWidgets extends StatelessWidget {
  const AppbarGroupedWidgets({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 5,
        right: 0,
        child: CustomAppBarWidget(
          size: size,
          color: Colors.red,
        ),
      ),
      Stack(children: [
        CustomAppBarWidget(
          size: size,
          color: Colors.grey.shade900,
        ),
        Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/football.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Juggle Challenge",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              "12:34",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ]),
    ]);
  }
}
