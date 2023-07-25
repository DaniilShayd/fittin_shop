import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner.freezed.dart';

part 'banner.g.dart';

@Freezed(
  fromJson: true,
  toJson: true,
  unionKey: "type",
)
sealed class BannerWindow with _$BannerWindow {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory BannerWindow.imageBanner({
    @JsonKey(name: 'image_url') required String imageUrl,
    String? link,
  }) = ImageBanner;

  const factory BannerWindow.buttonBanner({
    required String text,
    String? link,
  }) = ButtonBanner;

  const factory BannerWindow.titleBanner({
    required String text,
  }) = TitleBanner;

  const factory BannerWindow.markdownBanner({
    required String text,
  }) = MarkdownBanner;

  const factory BannerWindow.sliderBanner({
    required List<SliderItem> images,
  }) = SliderBanner;

  factory BannerWindow.fromJson(Map<String, dynamic> json) =>
      _$BannerWindowFromJson(json);
}

@freezed
class SliderItem with _$SliderItem {
  const factory SliderItem({
    required String url,
    String? link,
  }) = _SliderItem;

  factory SliderItem.fromJson(Map<String, dynamic> json) =>
      _$SliderItemFromJson(json);
}
