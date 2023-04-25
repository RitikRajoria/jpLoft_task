import 'package:flutter/material.dart';

class JuggleCounterWidget extends StatelessWidget {
  const JuggleCounterWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //background red container for juggle counter
        Positioned(
          bottom: 95,
          child: Container(
            color: Colors.red,
            width: size.width,
            height: (size.height) * 0.081,
          ),
        ),

        //left image of juggle counter
        Positioned(
          bottom: 70,
          left: 7,
          child: ClipPath(
            clipper: LeftClipper(),
            child: Container(
              height: 80,
              width: 83,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/shoe.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),

        //right image of juggle counter
        Positioned(
          bottom: 70,
          right: 7,
          child: ClipPath(
            clipper: RightClipper(),
            child: Container(
              height: 80,
              width: 83,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/shoe.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),

        //container for filling blank space below counter
        Positioned(
          bottom: 60,
          left: (size.width) * 0.25,
          child: Container(
            padding: const EdgeInsets.only(top: 8, left: 10, right: 10),
            color: Colors.grey.shade900,
            width: (size.width) * 0.5,
            height: (size.height) * 0.069,
          ),
        ),

        //juggle Counter
        Positioned(
          bottom: 97,
          left: (size.width) * 0.25,
          child: Container(
            color: Colors.grey.shade900,
            width: (size.width) * 0.5,
            height: (size.height) * 0.069,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "13",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(-2.0, 2.0),
                        blurRadius: 0,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                Text(
                  "Juggles   ",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "5",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(-2.0, 2.0),
                        blurRadius: 0,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class LeftClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.6843373, 0);
    path0.lineTo(size.width, size.height * 0.3000000);
    path0.lineTo(size.width, size.height);
    path0.lineTo(0, size.height);
    path0.lineTo(0, 0);

    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class RightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.3277108, 0);
    path0.lineTo(0, size.height * 0.3400000);
    path0.lineTo(0, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width, 0);

    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
