import 'package:flutter/material.dart';
import 'package:trannin_poject/screens/brand_photo/components/item_photo.dart';
import 'package:trannin_poject/shared/my_app_bar.dart';

import 'model.dart';

class BrandPhotoScreen extends StatelessWidget {
   BrandPhotoScreen({Key? key}) : super(key: key);
   List<BrandPhotoModel> list = [
     BrandPhotoModel(id: 0, imageUrl: "https://sun9-46.userapi.com/s/v1/ig2/e1loXhsZNqIkvn3LDTxgl0VYf8j5pzxHvWhYxyxEHsifjCAB2sxiplNh-6ee1bwdGim9BPGKNL0ISLu9QkUFiUtn.jpg?size=400x400&quality=96&crop=0,84,799,799&ava=1", description: "Product description to be added in this box ", numOfLikes:1000, isLiked: false),
     BrandPhotoModel(id: 1, imageUrl: "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA14S7DX.img", description: "Product description to be added in this box ", numOfLikes:1500, isLiked: true),
     BrandPhotoModel(id: 2, imageUrl: "https://thumbs.dreamstime.com/b/intellectual-work-man-stylish-hairstyle-male-face-businessman-concept-attractive-mature-grey-hair-bristle-outdoors-predict-181551303.jpg", description: "Product description to be added in this box ", numOfLikes:1700, isLiked: false),

   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Brand Photoes"),
      body: ListView.builder(
        itemBuilder: (context, index) => ItemPhoto(model: list[index]),
        itemCount: list.length,
      ),
    );
  }
}
