import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trannin_poject/screens/car/model.dart';
import 'package:trannin_poject/screens/car/states.dart';

class CarsCubit extends Cubit<CarStates>
{
  CarsCubit() :super(CarStates());


  void getCars()async{
    emit(GetCarsLoadingStates());
    await Future.delayed(Duration(seconds: 3));
    List<Car> list = [
      Car(id: 0, name: "Fiat", color: "White", image:"https://www.focus2move.com/wp-content/uploads/2017/01/Fiat-124_Spider-2017.jpg"),
      Car(id: 1, name: "Audi", color: "Red", image:"https://th.bing.com/th/id/R.01cc7c36f4381b6fdede503ddd4ce882?rik=bgoSY5vaTfYYzg&pid=ImgRaw&r=0"),
      Car(id: 2, name: "Scoda", color: "Black", image:"https://th.bing.com/th/id/R.354bedab4abc89e00190faaaffe22c5f?rik=mhLAcb1kaMRXxA&pid=ImgRaw&r=0"),
      Car(id: 3, name: "hyundai ", color: "Red", image:"https://th.bing.com/th/id/R.45efcc895ea3db17ec925417f3731187?rik=PUY8As6Pnca8MA&pid=ImgRaw&r=0"),
      Car(id: 4, name: "Opel", color: "White", image:"https://th.bing.com/th/id/OIP.k686nwCnpuXGCWG0o9ZOxQHaEh?pid=ImgDet&rs=1"),
      Car(id: 5, name: "Kia", color: "Black", image:"https://th.bing.com/th/id/OIP.19e-PQkLs3NFwSbESBcT9AHaEs?pid=ImgDet&rs=1"),
      Car(id: 6, name: "Suzuki", color: "blue", image:"https://i.pinimg.com/originals/70/89/ee/7089ee5a3b240bea34cf99496b0498a0.jpg"),
      Car(id: 7, name: "Chevrolet", color: "blue", image:"https://utilities.walkinshawgroup.com/images/press/hsv/2019/Chevrolet-Camaro-ZL1-Powers-into-HSV-Range-lg.jpg"),

    ];
    emit(GetCarsSuccessStates(list:list));

  }

}