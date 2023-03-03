import 'package:flutter/material.dart';

class GalleryDetail extends StatelessWidget {
  final String imageUrl;

  const GalleryDetail({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: Column(
        children: [
          Image.network(imageUrl),
        ],
      ),
    );
  }
}
