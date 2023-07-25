part of 'catalog_bloc.dart';

class CatalogState {}

class CatalogInitial extends CatalogState {}


class CatalogLoading extends CatalogState {}

class CatalogLoaded extends CatalogState {
  CatalogLoaded({required this.productsList});

  final List<Product> productsList;
}