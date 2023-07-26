import 'package:trannin_poject/screens/book/model.dart';

class BookState{}
class BookLoadingState extends BookState{}
class BookSuccessState extends BookState{
  List<Book> list;
  BookSuccessState({required this.list});
}
class BookFailedState extends BookState{
  final String massage;
  BookFailedState({required this.massage});
}

class ToggleFavLoadingState extends BookState{}
class ToggleFavSuccessState extends BookState{
final int id ;
ToggleFavSuccessState({required this.id});
}
class ToggleFavFailedState extends BookState{
  final String massage;
  ToggleFavFailedState({required this.massage});

}
