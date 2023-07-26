import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trannin_poject/screens/book/model.dart';

import '../book/cubit.dart';
import '../book/state.dart';

class BookDetailsScreen extends StatefulWidget {
  final Book model;
  final BookCubit cubit ;
  const BookDetailsScreen({Key? key,required this.model , required this.cubit}) : super(key: key);

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Book Details"),
      actions: [
        BlocBuilder(
          bloc: widget.cubit,
            buildWhen:  (previous, current) => current is ToggleFavSuccessState,
            builder: (context , state) {
              return IconButton(onPressed: (){
                widget.model.toggleFav();
                widget.cubit.toggleFav(id: widget.model.id);
              }, icon: Icon(widget.model.isFav?Icons.favorite: Icons.favorite,
                color: widget.model.isFav? Colors.red : Colors.grey
                ,
              )
              );

            }
        ),

      ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(widget.model.image,height: 300,width: double.infinity,),
            Padding(padding: EdgeInsets.symmetric(vertical: 16),
            child: Text(widget.model.title),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(widget.model.descreption),
            ),
          ],
        ),
      ),
    );
  }
}
