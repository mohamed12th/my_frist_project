import 'package:flutter/material.dart';
import 'package:trannin_poject/shared/my_app_bar.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Brand Product",),

    );
  }
}
