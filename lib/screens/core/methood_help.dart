
import 'package:flutter/material.dart';

Future navgigateTo({required context , required page , required withHistor}){
  return Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => page), (route) => withHistor);

}