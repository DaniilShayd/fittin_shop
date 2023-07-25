import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:fittin_shop/pages/tab_pages/showcase_page/widgets/banner_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
import '../../../data/service/banner_client.dart';
import '../../../domain/models/showcase_models/banner.dart';
import 'showcase_bloc/showcase_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class ShowCasePage extends StatefulWidget {
  const ShowCasePage({super.key});

  @override
  State<ShowCasePage> createState() => _ShowCasePageState();
}

class _ShowCasePageState extends State<ShowCasePage> {
  final _showCaseBloc = ShowCaseBloc(BannerClient(Dio()));
  
  @override
  void initState() {
    _showCaseBloc.add(LoadBunnerList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
              height: 38,
              child: const Image(
                  image: AssetImage('assets/show_page_images/logo.png'))),
        ),
        body:
            BlocBuilder<ShowCaseBloc, ShowCaseState>(
              bloc: _showCaseBloc,
              builder: (context, state) {
                if (state is ShowCaseLoaded) {
                  return ListView.separated(
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: state.bannersList.length + 1,
                    itemBuilder: (context, i) {
                      if (i == 0) {
                        return IconButton(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          onPressed: () {},
                          icon: Container(
                            color: Colors.black,
                            height: 50,
                            alignment: Alignment.center,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shopping_basket,
                                  color: Colors.white,
                                ),
                                Text(
                                  'В корзину',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                      final banner = state.bannersList[i - 1];
                      return BannerCard(banner: banner);
                    },
                  );
                }
                return Center(child: const CircularProgressIndicator());
              },
            ),
      ),
    );
  }
}
