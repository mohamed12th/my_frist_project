import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trannin_poject/screens/book/component/item_book.dart';
import 'package:trannin_poject/screens/book/cubit.dart';
import 'package:trannin_poject/screens/book/model.dart';
import 'package:trannin_poject/screens/book/state.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context )=> BookCubit()..getBook(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Book Store"),),
        body: Builder(
          builder: (context) {
            BookCubit cubit = BlocProvider.of(context);
            return BlocBuilder<BookCubit , BookState>(
              buildWhen: (previous, current) =>
              current is BookLoadingState ||
                  current is BookSuccessState ||
                  current is BookFailedState,
              builder: (context , state){
                if(state is BookLoadingState){
                  return const Center(child: CircularProgressIndicator());
                }else if (state is BookFailedState) {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text("Failed Try Again"),
                        ElevatedButton(onPressed: () {
                          cubit.getBook();
                        }, child: const Text("Try Again"))
                      ],
                    ),
                  );
                }
                else if (state is BookSuccessState){
                  return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      itemCount: state.list.length,
                      itemBuilder:(context , index)=>ItemBook(
                        model: state.list[index],
                      ));
                }
                else{
                  return Center(child: Text("erorr"),);
                }
              },
            );
          }
        ),
      ),
    );
  }
}
