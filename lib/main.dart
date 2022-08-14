
import 'package:flutter/material.dart';
import 'package:untitled/BMI_Result.dart';
import 'package:untitled/BMI_Screen.dart';
import 'package:untitled/HomeScreen.dart';
import 'package:untitled/LoginScreen.dart';
import 'package:untitled/Messenger.dart';
import 'package:untitled/Users.dart';
import 'package:untitled/s.dart';


main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{

  Widget build(BuildContext context)
  {
    return MaterialApp(home:BmiSceen(),debugShowCheckedModeBanner: false,);

  }
}