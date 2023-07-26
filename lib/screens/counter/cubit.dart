import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trannin_poject/screens/counter/cache_helper.dart';

import 'state.dart';

class CounterCubit extends Cubit<CounterStates>{
  int count = CachHelper.getCounter();
  CounterCubit() : super(CounterInitialStats());
  void plus(){
    count++;
    CachHelper.SaveCounter(count);
    emit(CounterPlusStats());

  }
  void minus(){
    count--;
    CachHelper.SaveCounter(count);
    emit(CounterMinusStats());

  }
}