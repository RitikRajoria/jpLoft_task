import 'package:flutter/material.dart';
import 'package:jp_loft_task/widgets/csp_bottombarwidget.dart';

class BottombarWidget extends StatelessWidget {
  const BottombarWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    Shadow shadow = const Shadow(
      color: Colors.red,
      blurRadius: 25.0,
    );
    return Stack(
      children: [
        //red container in background
        Positioned(
          bottom: 5,
          child: CustomBottomBarWidget(size: size, color: Colors.red),
        ),

        //grey container in bakcground
        CustomBottomBarWidget(size: size, color: Colors.grey.shade900),

        //bottom bar icons
        Positioned(
          bottom: 10,
          child: SizedBox(
            height: (size.height) * 0.08,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      width: (size.width) * 0.41,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.stadium,
                            size: 32,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.stadium,
                            size: 32,
                            color: Colors.white,
                            shadows: [shadow],
                          ),
                          Icon(
                            Icons.star,
                            size: 32,
                            color: Colors.white,
                            shadows: [shadow],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      width: (size.width) * 0.41,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.groups_2,
                            size: 32,
                            color: Colors.white,
                            shadows: [shadow],
                          ),
                          Icon(
                            Icons.account_circle_outlined,
                            size: 32,
                            color: Colors.white,
                            shadows: [shadow],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
