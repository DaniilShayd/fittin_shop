import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../data/service/banner_client.dart';
import '../../../../domain/models/showcase_models/banner.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key, required this.banner});

  final BannerWindow banner;

  @override
  Widget build(BuildContext context) {
    return banner.when(
        imageBanner: (imageUrl, link) => ImageBanner(imageUrl: imageUrl),
        buttonBanner: (text, link) => ButtonBanner(text: text),
        titleBanner: (text) => TitleBanner(text: text),
        markdownBanner: (text) => MarkDownBanner(text: text),
        sliderBanner: (images) => SliderBanner(items: images));
  }
}

class ButtonBanner extends StatelessWidget {
  const ButtonBanner({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Text(
        '${text}',
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}

class TitleBanner extends StatelessWidget {
  const TitleBanner({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${text}',
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.black,
      ),
    );
  }
}

class ImageBanner extends StatelessWidget {
  const ImageBanner({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CachedNetworkImage(imageUrl: imageUrl),
    );
  }
}

class MarkDownBanner extends StatelessWidget {
  const MarkDownBanner({super.key, required this.text, this.imageUrl});

  final String? text;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (imageUrl != null) CachedNetworkImage(imageUrl: imageUrl!),
        Text(
          '${text}',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class SliderBanner extends StatefulWidget {
  const SliderBanner({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<SliderItem> items;

  @override
  State<SliderBanner> createState() => SliderBannerState();
}

class SliderBannerState extends State<SliderBanner> {
  final PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: PageView.builder(
            controller: controller,
            itemCount: widget.items.length,
            itemBuilder: (context, index) {
              final item = widget.items[index];
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: item.url,
                    progressIndicatorBuilder: (_, __, ___) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    errorWidget: (_, __, ___) {
                      return Image.asset(
                        'assets/show_page_images/banners_images/products.png',
                        fit: BoxFit.fill,
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SmoothPageIndicator(
          controller: controller, // PageController
          count: widget.items.length,
          effect: const WormEffect(
            dotWidth: 8,
            dotHeight: 8,
          ),
          // your preferred effect
          onDotClicked: (index) {
            controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 400),
              curve: Curves.bounceIn,
            );
          },
        )
      ],
    );
  }
}

class OnBannerError extends StatelessWidget {
  const OnBannerError({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'No Banner',
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.black,
      ),
    );
  }
}
