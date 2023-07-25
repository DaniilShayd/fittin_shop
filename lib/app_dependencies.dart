

import 'package:dio/dio.dart';
import 'package:fittin_shop/data/service/banner_client.dart';
import 'package:fittin_shop/fittin_shop_app.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:provider/provider.dart';
class AppDependencies extends StatelessWidget {
  const AppDependencies({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => Dio()
            ..interceptors.add(
              PrettyDioLogger(),
            )
            ..options.baseUrl = 'http://farm.fbtw.ru/'
            ..options.contentType = 'application/json',

        ),
        Provider(
          create: (context) => BannerClient(
            context.read(),
          ),
        ),
      ],
      child: child,
    );
  }
}
