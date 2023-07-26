import 'package:flutter/material.dart';
import 'package:trannin_poject/screens/categories_list/item_catogry/view.dart';
import 'package:trannin_poject/shared/my_app_bar.dart';

class CategoriesListScreen extends StatelessWidget {
  const CategoriesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:MyAppBar(
        title: "categories list",isFilterShown: false,
      ),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsetsDirectional.only(start: 19,bottom: 19),
              child: Text("Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          ...List.generate(3, (index) => ItemCatogry()),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 19,bottom: 19),
            child: Text("Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          ...List.generate(4, (index) => ItemCatogry()),
          Center(
            child: ElevatedButton(onPressed: (){}, child: Text("Add to Editor"), style: ElevatedButton.styleFrom(
                primary: Colors.black,
                fixedSize: Size(264, 44)
            ),),
          ),
          SizedBox(height: 10,),



        ],
      ),
    );
  }
}
