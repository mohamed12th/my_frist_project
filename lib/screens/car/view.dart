import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trannin_poject/screens/car/component/item_car.dart';
import 'package:trannin_poject/screens/car/cubit.dart';
import 'package:trannin_poject/screens/car/states.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context )=> CarsCubit()..getCars(),
    child: Scaffold(
        appBar: AppBar(title: Text("My Car"),),
        body:BlocBuilder<CarsCubit,CarStates>(
          builder: (context , state) {
            if(state is GetCarsLoadingStates){
              return Center(child: CircularProgressIndicator());
            }else if (state is GetCarsFailedStates) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Failed Try Again"),
                    ElevatedButton(onPressed: () {}, child: Text("Try Again"))
                  ],
                ),
              );
            }
              else if(state is GetCarsSuccessStates){
              return GridView.builder(
                padding: EdgeInsets.all(20),
                itemCount: state.list.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 20,childAspectRatio: 165/210),
                itemBuilder:(context , index)=> ItemCar(model: state.list[index],) ,
              );
            }
            else{
              return Center(child: Text("erorr"),);
            }
          },
        )
    ),
    );
  }
}

