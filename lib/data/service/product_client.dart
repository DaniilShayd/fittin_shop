import 'package:decimal/decimal.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:fittin_shop/domain/models/catalog_models/product.dart';

import '../../domain/models/catalog_models/catalog_products_response.dart';
import '../../domain/models/catalog_models/product_list.dart';

part 'product_client.g.dart';

@RestApi()
abstract class ProductClient {
  factory ProductClient(
      Dio dio, {
        String baseUrl,
      }) = _ProductClient;
  @POST("catalog/products/")
/*  Future <ProductList> getProducts({
    @Query('results') List<Product> results,
});*/
  Future<CatalogProductsResponse> getProducts({
    @Query('page') int? page,
    @Query('size') int? size,
  });
  /*Future <Product> getProducts({
  //  @Query('results') List<Product>? results,
    @Query('id') int? id,
    @Query('price') String? price,
    @Query('discount') Decimal? discount,
    @Query('old_price') String? oldPrice,
    @Query('name') String? name,
    @Query('article') String? article,
    @Query('picture') String? picture,
    @Query('rating') Decimal? rating,
    @Query('reviews_count') int? reviewsCount,
    @Query('brand') String? brand,

  });*/
}
