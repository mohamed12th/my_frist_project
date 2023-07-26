import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trannin_poject/screens/book/state.dart';

import 'model.dart';

class BookCubit extends Cubit <BookState>{
  BookCubit():super(BookState());
  void getBook()async{
    emit(BookLoadingState());
    await Future.delayed(Duration(seconds: 3));
    List<Book>list =[
      Book(id:0 ,title: "هيبتا",image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1403045796i/20317106.jpg",descreption: "هيبتا المؤلف محمد صادق"),
      Book(id:1 ,title: "الفيل الأزرق",image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1485105416i/16031620.jpg",descreption: "الفيل الازرق المؤلف احمد مراد"),
      Book(id:2 ,title: "تراب الماس",image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1265525892i/7704143.jpg",descreption: "تراب الماس المؤلف احمد مراد"),
      Book(id:3 ,title: "انتحار فاشل",image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1465754541i/30528535.jpg",descreption: "انتحار فاشل المؤلف احمد جمال الدين رمضان"),
      Book(id:4 ,title: "أحببتك أكثر مما ينبغي",image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1257796264i/7119070.jpg",descreption: "المؤلف اثير عبداللخ النمشي"),
      Book(id:5 ,title: "العصبي",image: "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1465754782i/30528544.jpg",descreption: "العصبي احمد جمال الدين رمضان"),
    ];
    emit(BookSuccessState(list: list));
  }
  void toggleFav({required int id})async{
    emit(ToggleFavLoadingState());
    await Future.delayed(Duration(seconds: 2));
    emit(ToggleFavSuccessState(id : id));

  }

}