import 'package:flutter/material.dart';
import 'package:flutter_week5_animation/screen/gallery/gallery_detail.dart';
import 'package:flutter_week5_animation/screen/widget/alta_page_route_builder.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(18.0),
        itemCount: 100,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 18.0, crossAxisSpacing: 18.0),
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () => Navigator.of(context).push(altaPageRouteBuilder(
                  page: GalleryDetail(
                      imageUrl: 'https://picsum.photos/id/$index/400/400'),
                  routeName: 'Gallery Detail')),
              child: Image.network('https://picsum.photos/id/$index/400/400'));
        });
  }
}
