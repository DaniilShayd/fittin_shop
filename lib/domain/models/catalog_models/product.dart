
import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:decimal/decimal.dart';
part 'product.freezed.dart';

part 'product.g.dart';
@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String picture,
    required Decimal price,
    @JsonKey(name: "old_price") Decimal? oldPrice,
    required String name,
    String? article,
    double? rating,
    @JsonKey(name: "reviews_count") int? reviewsCount,
    @JsonKey(name: "city_fias") String? cityFias,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
/*
@freezed
abstract class Product with _$Product {
  const factory Product({
    required int id,
    required String price,
    @JsonKey(name: "old_price") String? oldPrice,
    required String name,
    String? article,
    required String picture,
    String? rating,
    @JsonKey(name: "reviews_count") int? reviewsCount,
    required String brand,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}*/
