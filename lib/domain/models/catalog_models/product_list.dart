
import 'dart:ffi';
import 'package:fittin_shop/domain/models/catalog_models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:decimal/decimal.dart';
part 'product_list.freezed.dart';

part 'product_list.g.dart';

@freezed
abstract class ProductList with _$ProductList {
  const factory ProductList({
    required List<Product> results,
  }) = _ProductList;

  factory ProductList.fromJson(Map<String, dynamic> json) =>
      _$ProductListFromJson(json);
}