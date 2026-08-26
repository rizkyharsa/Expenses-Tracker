import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_view.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  Timer startSplashScreen() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () async => Get.offAll(() => const MainView(), transition: Transition.fadeIn));
  }

  @override
  void initState() {
    startSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(alignment: Alignment.center, child: Image.asset("assets/images/logo1.png", scale: 3)),
    );
  }
}
