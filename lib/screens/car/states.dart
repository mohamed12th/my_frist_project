import 'package:trannin_poject/screens/car/model.dart';

class CarStates{}

class GetCarsInitialStates extends CarStates{}
class GetCarsLoadingStates extends CarStates{}
class GetCarsSuccessStates extends CarStates{
   List<Car> list;
  GetCarsSuccessStates({required this.list});
}
class GetCarsFailedStates extends CarStates{}