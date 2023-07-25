import 'package:decimal/decimal.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:fittin_shop/domain/models/showcase_models/banner.dart';
part 'banner_client.g.dart';

@RestApi()
abstract class BannerClient {
  factory BannerClient(
      Dio dio, {
  String baseUrl,
      }) = _BannerClient;
  @GET("https://farm.fbtw.ru/banners/")
  Future<List<BannerWindow>> getBanners(/*{
    @Query('id') int id,
    @Query('text') String? text,
    @Query('image_url') String? imageUrl,
    @Query('link') String? link,
    @Query('type') String type,
    @Query('images') List<SliderItem>? images,
  }*/);
}

