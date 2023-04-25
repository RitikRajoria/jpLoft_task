import 'package:flutter/material.dart';
import 'package:jp_loft_task/widgets/appbar.dart';
import 'package:jp_loft_task/widgets/backgroundimagewidget.dart';
import 'package:jp_loft_task/widgets/bottombar.dart';

import 'package:jp_loft_task/widgets/csp_bottombarwidget.dart';
import 'package:jp_loft_task/widgets/jugglecounter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BackImageWidget(size: size),

            JuggleCounterWidget(size: size),

            AppbarGroupedWidgets(size: size),

            BottombarWidget(size: size),

            //side icons
            Positioned(
              right: 10,
              bottom: 200,
              child: Center(
                child: SizedBox(
                  height: (size.height) * 0.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      Icon(
                        Icons.share,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
