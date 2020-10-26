import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  String imageUrl;
  CircularImage({this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover)),
        );
        placeholder:
        (context, url) {
          return Center(
            child: CircularProgressIndicator(),
          );
        };
        ErrorWidget(context, url, error) {
          return Container();
        }
      },
    );
  }
}
