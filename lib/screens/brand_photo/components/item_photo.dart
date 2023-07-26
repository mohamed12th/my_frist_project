import 'package:flutter/material.dart';

import '../model.dart';

class ItemPhoto extends StatelessWidget {
  final BrandPhotoModel model;
  const ItemPhoto({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            model.imageUrl,
            height: 390,

          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20 , end: 17),
            child: SizedBox(
              width: 353,
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                  Text("liked by ${model.numOfLikes} others"),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.share))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20 , end: 17),
            child: Text(model.description),
          ),
        ],
      ),
    );
  }
}
