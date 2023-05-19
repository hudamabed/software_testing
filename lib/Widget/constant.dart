import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Constant {
  Constant._();
  static Constant instance = Constant._();

  Widget networkImage(
      {required String imageUrl,
      double? width,
      double? height,
      BoxFit fit = BoxFit.cover}) {
    return CachedNetworkImage(
      imageBuilder: (context, imageProvider) {
        return Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: CachedNetworkImageProvider(imageUrl),
              fit: fit,
            ),
          ),
        );
      },
      imageUrl: 'https://demofree.sirv.com/nope-not-here.jpg',
      errorWidget: (context, url, error) {
        return const Icon(Icons.error);
      },
      fit: BoxFit.cover,
      placeholder: (context, String? url) {
        return const Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              color: Color(0xFF5C6AC4),
              strokeWidth: 2,
            ),
          ),
          // ),
        );
      },
    );
  }
}
