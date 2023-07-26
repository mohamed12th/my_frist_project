import 'package:flutter/material.dart';
import 'package:trannin_poject/screens/counter/cache_helper.dart';
import 'package:trannin_poject/screens/counter/view.dart';
import 'package:trannin_poject/screens/my_map/view.dart';
import 'screens/book/view.dart';
import 'screens/brand_collages/view.dart';
import 'screens/brand_photo/view.dart';
import 'screens/car/view.dart';
import 'screens/categories_list/view.dart';
import 'screens/dialogs/view.dart';
import 'screens/forget_password/view.dart';
import 'screens/home/view.dart';
import 'screens/login/login.dart';
import 'screens/months/view.dart';
import 'screens/movies/view.dart';
import 'screens/postes/view.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await CachHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
            
          titleTextStyle: TextStyle(color : Colors.black , fontSize: 22 , fontWeight: FontWeight.bold)
        ),
      /*  elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color(0xff211F21),
            fixedSize: Size(351, 45),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            )
          )
        ),*/
        scaffoldBackgroundColor: Colors.white,

        primarySwatch: Colors.blue,
      ),
      home: MyMap(),
    );
  }
}
