import 'package:shared_preferences/shared_preferences.dart';

class CachHelper{
 static late SharedPreferences _ref;

 static Future<void> init()async {
    _ref = await SharedPreferences.getInstance();
  }
  static Future<bool> SaveCounter(int num){
   return _ref.setInt("counter", num);
  }
  static int getCounter(){
  return _ref.getInt("counter")??1;
  }
  static Future<bool> removeCounter(){
  return _ref.remove("counter");
  }
 static Future<bool> clear(){
  return _ref.clear();
 }


 static Future<bool> SaveIfFristTime(){
  return _ref.setBool("isFristTime", false);
 }
 static bool getIfFristTime(){
  return _ref.getBool("isFrisTime")??true;
 }
 static Future<bool> SaveUserName(String name){
  return _ref.setString("name", name);
 }
 static String getUserName(){
  return _ref.getString("name")??"";
 }
 static Future<bool> SaveWord(String word){
  return _ref.setString("word", word);
 }
 static String getWoed(){
  return _ref.getString("word")??"";
 }
}