import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitlednew2_6/Pages/Exercise_list.dart';
import 'package:untitlednew2_6/Pages/Exercise_program.dart';
import 'package:untitlednew2_6/Pages/Food_list.dart';
import 'package:untitlednew2_6/Pages/Food_program.dart';
import 'package:untitlednew2_6/Pages/Home.dart';
import 'package:untitlednew2_6/DB/myDB.dart';
import 'package:untitlednew2_6/DB/Student.dart';
import 'package:untitlednew2_6/Pages/Login.dart';
import 'Pages/Splash.dart' as Splash;
//import 'Db/DBTEST.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
//  var db = new MyDB();
//  int i = await db.savStudent(new Student("Allen", "Tehran"));
//
//
//
//
//  var i24 = await db.Allen();
//
//  var i2 = await db.getAllrecords();
//
//
//  print(i2);
//  print(i24);
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'vazir'
    ),
    routes: {
      '/Home': (context) => new Directionality(textDirection: TextDirection.rtl, child: new Home()),
      '/splash': (context) => new Directionality(textDirection: TextDirection.rtl, child: new Splash.SplashScreen()),
//      '/Home': (context) => new Home(),
//      '/splash': (context) => new Splash.SplashScreen(),

      '/Exercise_list': (context) => new Exercise_list(),
      '/Exercise_program': (context) => new Exercise_program(),
      '/Food_list': (context) => new Food_list(),
      '/Food_program': (context) => new Food_program(),
      '/Login': (context) => new Login(),

    },
    initialRoute: '/Home',

    title: 'Navigation Basics',
//    home: Home(),
//    home:Food_program(),
//    home:Exercise_list(),
//    home:Text('$i2'),
//    home:DBTEST(),
//    home:Login(),

//      home :Exercise_program(),
//    home:Food_list(),
//    home: Splash.SplashScreen(),
  ));

}
