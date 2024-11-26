import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'custome_card.dart';

class MyCustomScreen extends StatelessWidget {
  const MyCustomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
        elevation: 0, // Remove shadow
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: Image.asset(
              "assets/img_1.png",
              width: 4,
              height: 3,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/img.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: 150.94,
              left: 276.83,
              child: Image.asset(
                "assets/img_3.png",
                width: 40,
                height: 100,
              )),
          Positioned(
              top: 190,
              left: 96,
              child: SvgPicture.asset(
                "assets/line.svg",
                width: 208,
                height: 75,
              )),
          Positioned(
              top: 189,
              left: 68,
              child: SvgPicture.asset(
                "assets/circle_out.svg",
                width: 56,
                height: 56,
              )),
          Positioned(
              top: 211,
              left: 90,
              child: SvgPicture.asset(
                "assets/circle_in.svg",
                width: 12,
                height: 12,
              )),
          Positioned(
              top: 166,
              left: 75,
              child: SvgPicture.asset(
                "assets/girl.svg",
                width: 42,
                height: 48,
              )),
          Positioned(
              top: 169,
              left: 78,
              child: Image.asset(
                "assets/img_2.png",
                width: 36,
                height: 36,
              )),
          const RideTrackingScreen()
        ],
      ),
    );
  }
}
