// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as int,
      picture: json['picture'] as String,
      price: Decimal.fromJson(json['price'] as String),
      oldPrice: json['old_price'] == null
          ? null
          : Decimal.fromJson(json['old_price'] as String),
      name: json['name'] as String,
      article: json['article'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      reviewsCount: json['reviews_count'] as int?,
      cityFias: json['city_fias'] as String?,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'picture': instance.picture,
      'price': instance.price,
      'old_price': instance.oldPrice,
      'name': instance.name,
      'article': instance.article,
      'rating': instance.rating,
      'reviews_count': instance.reviewsCount,
      'city_fias': instance.cityFias,
    };
