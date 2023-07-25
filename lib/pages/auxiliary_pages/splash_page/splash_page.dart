import 'package:fittin_shop/fittin_shop_app.dart';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    _navigateToHome();

    super.initState();
    onDone(context);

  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500), (){});
  }
  void onDone(context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FittinShopApp()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 72),
      alignment: Alignment.center,
      color: Colors.white,
      child: const Image(image: AssetImage('assets/splash_images/shop_icon.png')),
    );
  }
}