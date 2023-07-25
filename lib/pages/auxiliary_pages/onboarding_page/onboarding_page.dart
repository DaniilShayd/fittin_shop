import 'package:fittin_shop/fittin_shop_app.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});

  final List<PageViewModel> pages = [
    PageViewModel(
      body: 'Покупайте продукты не'
          ' выходя из дома или '
          'получайте бонусы за '
          'прогулку за ними.',
      footer: IconButton(
        onPressed: () {},
        icon: Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 50,
          child: const Center(
            child: Text(
              'Далее',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      image: Center(
        child: Image.asset('assets/onboarding_images/screen_1_shop.png'),
      ),
    ),
    PageViewModel(
      body: 'Удобная навигация внутри'
          ' магазина не позволит вам '
          'потеряться или что то '
          'забыть.',
      footer: IconButton(
        onPressed: () {},
        icon: Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 50,
          child: const Center(
            child: Text(
              'Далее',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      image: Center(
        child: Image.asset('assets/onboarding_images/screen_1_shop.png'),
      ),
    ),
    PageViewModel(
      body: 'Делитесь корзиной с'
          ' близкими и друзьями.',
      footer: IconButton(
        onPressed: () {},
        icon: Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 50,
          child: const Center(
            child: Text(
              'Далее',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      image: Center(
        child: Image.asset('assets/onboarding_images/screen_1_shop.png'),
      ),
    ),
    PageViewModel(
      body: 'Приятной работы с'
          ' приложением',
      footer: IconButton(
        onPressed: () {},
        icon: Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 50,
          child: const Center(
            child: Text(
              'Далее',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      image: Center(
        child: Image.asset('assets/onboarding_images/screen_1_shop.png'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: pages,
        dotsDecorator: const DotsDecorator(
            color: Colors.black,
            size: Size(10, 10),
            activeSize: Size(10, 10),
            activeColor: Colors.white),
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
  void onDone(context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FittinShopApp()));
}
}
