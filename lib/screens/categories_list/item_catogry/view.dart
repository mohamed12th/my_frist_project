import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCatogry extends StatefulWidget {
  const ItemCatogry({Key? key}) : super(key: key);

  @override
  State<ItemCatogry> createState() => _ItemCatogryState();
}

class _ItemCatogryState extends State<ItemCatogry> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        isSelected =!isSelected;
        setState(() {

        });
      },
      child: Container(
        height: 100,
        width: 354,
        margin: EdgeInsetsDirectional.only(bottom: 17,start: 17),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Color(0xFF7B7B7B),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            SizedBox(width: 24,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: isSelected?MainAxisAlignment.start:MainAxisAlignment.center,
              children: [
                if(isSelected)
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 10,end: 10),
                  child: Align( alignment: AlignmentDirectional.topEnd,child: Icon(Icons.check,color: Color(0xFF516E00),)),
                ),
                SizedBox(height: 4,),
                Text("Category name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                SizedBox(height: 4,),
                Text("2140 Items" , style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal, color: Color(0XFF353636)),)
              ],
            ))
          ],
        ),
      ),
    );
  }
}
