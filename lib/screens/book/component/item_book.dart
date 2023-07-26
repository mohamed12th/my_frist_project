import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trannin_poject/screens/book/cubit.dart';
import 'package:trannin_poject/screens/book/model.dart';
import 'package:trannin_poject/screens/book/state.dart';
import 'package:trannin_poject/screens/book_details/view.dart';
import 'package:trannin_poject/screens/core/methood_help.dart';

class ItemBook extends StatefulWidget {
  final Book model;
  const ItemBook({Key? key, required this.model}) : super(key: key);

  @override
  State<ItemBook> createState() => _ItemBookState();
}

class _ItemBookState extends State<ItemBook> {
  @override
  Widget build(BuildContext context) {
    BookCubit cubit = BlocProvider.of(context);
    return GestureDetector(
      onTap: (){
        navgigateTo(context: context, page:BookDetailsScreen(model: widget.model,cubit: cubit), withHistor: true);
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child:  Column(
            children: [
              Expanded(child: Image.network(widget.model.image)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(widget.model.title),
                    BlocBuilder<BookCubit,BookState>(
                      buildWhen:  (previous, current) => current is ToggleFavSuccessState && current.id == widget.model.id,
                        builder: (context , state) {
                          return IconButton(onPressed: (){
                          widget.model.toggleFav();
                          cubit.toggleFav(id: widget.model.id);

                          }, icon: Icon(widget.model.isFav?Icons.favorite: Icons.favorite,
                          color: widget.model.isFav? Colors.red : Colors.grey
                          ,
                          )
                          );

                        }
                        )
                    ],

                ),
              ),

            ],
          ),
        ),
    );

  }
}
