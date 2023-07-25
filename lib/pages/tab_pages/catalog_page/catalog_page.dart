import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:fittin_shop/data/service/product_client.dart';
import 'package:fittin_shop/pages/tab_pages/catalog_page/catalog_bloc/catalog_bloc.dart';
import 'package:fittin_shop/pages/tab_pages/catalog_page/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  final _catalogBloc = CatalogBloc(ProductClient(Dio()));

  @override
  void initState() {
    _catalogBloc.add(LoadCatalogList());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Каталог"),
        centerTitle: true,
      ),
      body: BlocBuilder<CatalogBloc, CatalogState>(
        bloc: _catalogBloc,
        builder: (context, state) {
          if (state is CatalogLoaded) {
            return Text("data");/* GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 5 / 4,
              ),
              itemBuilder: (context, index) {
                final product = state.productsList.results[index];
                return ProductCard();
              },
              itemCount: state.productsList.results.length,
            );*/
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
