import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitlednew2_6/Pages/Exercise_list.dart';
//import 'package:untitlednew2_6/Pages/Exercise_program.dart' as Exx;
import 'package:untitlednew2_6/Pages/Food_list.dart';
import 'package:untitlednew2_6/Pages/Food_program.dart';
import 'package:untitlednew2_6/Pages/Home.dart';
import 'package:untitlednew2_6/DB/myDB.dart';
import 'package:untitlednew2_6/DB/Student.dart';
import 'package:untitlednew2_6/Pages/Login.dart';
import 'Pages/Exercise_program.dart';
import 'Pages/Splash.dart' as Splash;
 //import 'Db/DBTEST.dart';

void main() async => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowMaterialGrid:false ,
//      debugShowCheckedModeBanner: false,

//      showSemanticsDebugger: false,

      title: 'WhatsApp',
      theme: ThemeData(
          fontFamily: 'vazir',
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
//          primaryColor: new Color(0xff075E54),
//          accentColor:  new Color(0xff25d366)
      ),
      routes: {
        "/Home" : (context) => new Directionality(textDirection: TextDirection.rtl, child: new Home2()),
        "/Login" : (context) => new Directionality(textDirection: TextDirection.rtl, child: new Login()),
        '/splash': (context) => new Splash.SplashScreen(),
//      '/Home': (context) => new Home(),
//      '/splash': (context) => new Splash.SplashScreen(),
        "/Exercise_list" : (context) => new Directionality(textDirection: TextDirection.rtl, child: new Exercise_list()),
//        '/Exercise_list': (context) => new Exercise_list(),
        '/Exercise_program': (context) => new DefaultPlayer(),
        '/Food_list': (context) => new Food_list(),
        '/Food_program': (context) => new Food_program(),
      },
          initialRoute: '/splash',
      debugShowCheckedModeBanner: false,

    );
  }
}


//
//
//void main11() async {
//  WidgetsFlutterBinding.ensureInitialized();
////  var db = new MyDB();
////  int i = await db.savStudent(new Student("Allen", "Tehran"));
////
////
////
////
////  var i24 = await db.Allen();
////
////  var i2 = await db.getAllrecords();
////
////
////  print(i2);
////  print(i24);
//  runApp(MaterialApp(
//    theme: ThemeData(
//      fontFamily: 'vazir'
//    ),
//    routes: {
//      '/Home': (context) =>  new Home(),
//      '/splash': (context) => new Splash.SplashScreen(),
////      '/Home': (context) => new Home(),
////      '/splash': (context) => new Splash.SplashScreen(),
//
//      '/Exercise_list': (context) => new Exercise_list(),
//      '/Exercise_program': (context) => new Exercise_program(),
//      '/Food_list': (context) => new Food_list(),
//      '/Food_program': (context) => new Food_program(),
//      '/Login': (context) => new Login(),
////      '/Drawer': (context) => new InkWellDrawer(),
////      '/Drawer': (context) => new Directionality(textDirection: TextDirection.rtl, child: new Drawer()),
//
//
//    },
//    initialRoute: '/Home',
//
//    title: 'Navigation Basics',
////    home: Home(),
////    home:Food_program(),
////    home:Exercise_list(),
////    home:Text('$i2'),
////    home:DBTEST(),
////    home:Login(),
//
////      home :Exercise_program(),
////    home:Food_list(),
////    home: Splash.SplashScreen(),
//  ));
//
//}
