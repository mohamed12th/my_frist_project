import 'package:flutter/material.dart';
import 'package:trannin_poject/screens/brand_collages/componate/item_collage.dart';
import 'package:trannin_poject/screens/brand_collages/controllar.dart';
import 'package:trannin_poject/shared/my_app_bar.dart';

import 'model.dart';

class BrandCollagesScreen extends StatelessWidget {
   BrandCollagesScreen({Key? key}) : super(key: key);
 final controller =  BrandCollageControllar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Brand Collages",isFilterShown: false,),
      body: ListView.builder(itemBuilder: (context, index) => ItemCollagesScreen(model:controller.list[index],), itemCount: controller.list.length,),
    );
  }
}
