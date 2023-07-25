import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fittin_shop/navigation/app_router.dart';
import 'package:fittin_shop/navigation/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        ShowcaseTab(),
        CatalogTab(),
        BasketTab(),
        FavouritesTab(),
        ProfileTab()
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          onDestinationSelected: tabsRouter.setActiveIndex,

          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.apps_rounded,
              ), label: 'Витрина',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.manage_search,
              ), label: 'Каталог',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.shopping_basket,
              ),
              label: 'Корзина',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Избранное',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.person_outline,
              ),
              label: 'Профиль',
            ),
          ],
        );
      },
    );
  }
}
