import 'package:flutter/material.dart';

import '../model.dart';

class ItemCar extends StatelessWidget {
  final Car model ;
  const ItemCar({Key? key,required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Expanded(child: Image.network(model.image,fit: BoxFit.fill,)),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(model.name,style: TextStyle(fontSize: 30,color: Colors.black),),
          )
        ],
      ),
    );
  }
}
