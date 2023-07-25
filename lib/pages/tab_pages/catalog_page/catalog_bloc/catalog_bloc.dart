import 'package:fittin_shop/data/service/product_client.dart';
import 'package:fittin_shop/domain/models/catalog_models/product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/models/catalog_models/product_list.dart';

part 'catalog_bloc_event.dart';
part 'catalog_bloc_state.dart';


class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc(this.productsRepository) : super(CatalogInitial()) {
    on<LoadCatalogList>((event, emit) async{
      final productsList = await productsRepository.getProducts();
      emit(CatalogLoaded(productsList: productsList.results));
    });
  }
  final ProductClient productsRepository;
}