import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:fittin_shop/pages/tab_pages/profile_page/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:fittin_shop/pages/home_page/home_page.dart';

import '../pages/tab_pages/basket_page/basket_page.dart';
import '../pages/tab_pages/catalog_page/catalog_page.dart';
import '../pages/tab_pages/favourite_page/favourite_page.dart';
import '../pages/tab_pages/showcase_page/showcase_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: HomeRoute.page,
          children: [
            AutoRoute(
              initial: true,
              page: ShowcaseTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: ShowCaseRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: CatalogTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: CatalogRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: BasketTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: BasketRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: FavouritesTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: FavoriteRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: ProfileTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: ProfileRoute.page,
                ),
              ],
            ),
          ],
        ),
      ];
}

@RoutePage(name: 'ShowcaseTab')
class ShowcaseTabPage extends AutoRouter {
  const ShowcaseTabPage({super.key});
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'BasketTab')
class BasketTabPage extends AutoRouter {
  const BasketTabPage({super.key});
}

@RoutePage(name: 'FavouritesTab')
class FavouritesTabPage extends AutoRouter {
  const FavouritesTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
