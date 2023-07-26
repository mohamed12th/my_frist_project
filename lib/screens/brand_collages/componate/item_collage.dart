import 'package:flutter/material.dart';
import 'package:trannin_poject/screens/brand_collages/model.dart';

class ItemCollagesScreen extends StatelessWidget {
  final BrandCollageModel model ;
  const ItemCollagesScreen({Key? key ,required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(model.userImage),),
          title: Text( model.userName , style: TextStyle(fontSize: 20),),
          subtitle: Text(model.createdAt,style: TextStyle(fontSize: 16),),
          trailing: InkWell(
              onTap: () {},
    child: Image.asset("assets/icons/Icons.png",height: 29.5 , width: 29.5,)),


        ),
        Image.network(model.collageImage,
        height: 397,
        width: 390,
        fit: BoxFit.fill,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(children: [
            Text(model.collageTitle, style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold),),
            Spacer(),
            IconButton(onPressed: (){}
              , icon: Icon(Icons.share),),
            InkWell(
              onTap: (){},
              child: Container(
                width: 45,
                height: 45,
                  child:  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Image .asset("assets/icons/Tap Cart- Unactive.png", width: 20.3 , height: 19.09,),
                  ),
                decoration: BoxDecoration(
                  color: Color(0xffE14B34),
                  borderRadius: BorderRadius.circular(7),
                ),

              ),
            )

          ],),
        ),
        SizedBox(height: 16,),
        ElevatedButton(onPressed: (){}, child: Text("Edit collage",style: TextStyle(fontSize: 18 , fontWeight: FontWeight.normal),)),
        SizedBox(height: 28.5,),
        Divider(color: Color(0xffE4E4E4),thickness: 8,),
      ],
    );
  }
}
